package generator

import (
    "bytes"
    "embed"
    _ "embed"
    "fmt"
    "go/format"
    "os"
    "path/filepath"
    "strings"
    "text/template"

    "github.com/iancoleman/strcase"
)

//go:embed datasource.tmpl
var datasourceTemplate string

//go:embed datasources.tmpl
var datasourcesTemplate string

//go:embed resource.tmpl
var resourceTemplate string

//go:embed *.tmpl
var templateFS embed.FS

type Configuration struct {
    Services map[string]Service
}

type Service struct {
    Name        string
    Description string
    Resources   map[string]Resource
}

type Resource struct {
    Name        string
    Plural      string
    Description string
    Attributes  map[string]Attribute
}

type TemplateData struct {
    ServicePackage string
    Resource       Resource
}

var funcMap = template.FuncMap{
    "lower":      strings.ToLower,
    "upper":      strings.ToUpper,
    "pascalCase": strcase.ToCamel,
    "camelCase":  strcase.ToLowerCamel,
    "snakeCase":  strcase.ToSnake,
    "kebabCase":  strcase.ToKebab,
    "delimited":  strcase.ToDelimited,
}

func init() {
    strcase.ConfigureAcronym("API", "api")
    strcase.ConfigureAcronym("SQL", "sql")
    strcase.ConfigureAcronym("ID", "ID")
}

type Attribute struct {
    Name        string
    Description string
    Type        string
    ReadOnly    bool
    MaxLength   int
    MinLength   int
    Pattern     string
    IsKey       bool
}

func (a Attribute) IsRequired() bool {
    return !a.ReadOnly && !a.IsKey && a.MinLength > 0
}

func Generate(outputPath string) error {
    c := Configuration{
        Services: map[string]Service{
            "dcim": {
                Name:        "dcim",
                Description: "Data Center Infrastructure Management",
                Resources: map[string]Resource{
                    "site": {
                        Name:        "site",
                        Plural:      "sites",
                        Description: "A site represents a logical grouping of devices, typically by physical location or purpose. For example, a site might be a data center, an office building, or a distributed network of servers.",
                        Attributes: map[string]Attribute{
                            "id": {
                                Name:        "ID",
                                Description: "The unique numeric ID of the site.",
                                Type:        "int64",
                                IsKey:       true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the site.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the site.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                            },
                        },
                    },
                },
            },
        },
    }
    
    var err error

    dir, err := templateFS.ReadDir(".")
    if err != nil {
        return err
    }
    for _, entry := range dir {
        if entry.IsDir() {
            continue
        }
        fmt.Println(entry.Name())
    }

    for serviceKey, service := range c.Services {
        for _, resource := range service.Resources {

            templateMap := map[string]string{
                "datasource.tmpl": filepath.Join(
                    outputPath,
                    "internal",
                    serviceKey,
                    strcase.ToSnake(resource.Name)+"_data_source_gen.go",
                ),
                "datasources.tmpl": filepath.Join(
                    outputPath,
                    "internal",
                    serviceKey,
                    strcase.ToSnake(resource.Plural)+"_data_source_gen.go",
                ),
                "resource.tmpl": filepath.Join(
                    outputPath,
                    "internal",
                    serviceKey,
                    strcase.ToSnake(resource.Name)+"_resource_gen.go",
                ),
            }

            data := TemplateData{
                ServicePackage: serviceKey,
                Resource:       resource,
            }

            for templateName, path := range templateMap {
                content, err := templateFS.ReadFile(templateName)
                if err != nil {
                    return err
                }

                tmpl, err := template.New("template").Funcs(funcMap).Parse(string(content))
                if err != nil {
                    return err
                }

                var buf bytes.Buffer
                err = tmpl.Execute(&buf, data)
                if err != nil {
                    return err
                }

                formatted, err := format.Source(buf.Bytes())
                if err != nil {
                    return err
                }

                d := filepath.Dir(path)
                err = os.MkdirAll(d, 0755)
                if err != nil {
                    return err
                }

                f, err := os.Create(path)
                defer f.Close()
                if err != nil {
                    return err
                }

                _, err = f.Write(formatted)
                if err != nil {
                    return err
                }

            }

            // path = filepath.Join(
            //     outputPath,
            //     "internal",
            //     serviceKey,
            //     strcase.ToSnake(resource.Name)+"_resource_gen.go",
            // )
            // err = writeTemplate(path, resourceTemplate, data)
            // if err != nil {
            //     return err
            // }
            //
            // path = filepath.Join(
            //     outputPath,
            //     "internal",
            //     serviceKey,
            //     strcase.ToSnake(resource.Name)+"_data_source_gen.go",
            // )
            // err = writeTemplate(path, datasourceTemplate, data)
            // if err != nil {
            //     return err
            // }
            //
            // path = filepath.Join(
            //     outputPath,
            //     "internal",
            //     serviceKey,
            //     strcase.ToSnake(resource.Plural)+"_data_source_gen.go",
            // )
            // err = writeTemplate(path, datasourcesTemplate, data)
            // if err != nil {
            //     return err
            // }
        }
    }
    return nil
}

func writeTemplate(filename string, tmpl string, data any) error {

    dir := filepath.Dir(filename)
    err := os.MkdirAll(dir, 0755)
    if err != nil {
        return fmt.Errorf("error creating directory (%s): %s", dir, err)
    }

    f, err := os.OpenFile(filename, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0644)
    if err != nil {
        return fmt.Errorf("error opening file (%s): %s", filename, err)
    }
    defer f.Close()

    t, err := template.New("template").Funcs(funcMap).Parse(tmpl)
    if err != nil {
        return fmt.Errorf("error parsing template: %s", err)
    }

    var buffer bytes.Buffer
    err = t.Execute(&buffer, data)
    if err != nil {
        return fmt.Errorf("error executing template: %s", err)
    }

    contents := buffer.Bytes()
    contents, err = format.Source(contents)
    if err != nil {
        return fmt.Errorf("error formatting source: %s", err)
    }

    _, err = f.Write(contents)
    if err != nil {
        return fmt.Errorf("error writing file: %s", err)
    }

    return nil
}
