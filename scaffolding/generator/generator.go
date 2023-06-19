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
    "gopkg.in/yaml.v3"
)

//go:embed *.tmpl
var templateFS embed.FS

type Configuration struct {
    Services map[string]Service `yaml:"services,omitempty"`

    resourceMap map[string]Resource
}

type Service struct {
    Name        string              `yaml:"name,omitempty"`
    Description string              `yaml:"description,omitempty"`
    Resources   map[string]Resource `yaml:"resources,omitempty"`
}

type Resource struct {
    Name         string                 `yaml:"name,omitempty"`
    Plural       string                 `yaml:"plural,omitempty"`
    Description  string                 `yaml:"description,omitempty"`
    Attributes   map[string]Attribute   `yaml:"attributes,omitempty"`
    Associations map[string]Association `yaml:"associations,omitempty"`
}

type Attribute struct {
    Name        string `yaml:"name,omitempty"`
    Description string `yaml:"description,omitempty"`
    Value       string `yaml:"value,omitempty"`
    Type        string `yaml:"type,omitempty"`
    ReadOnly    bool   `yaml:"readonly,omitempty"`
    MaxLength   int    `yaml:"maxLength,omitempty"`
    MinLength   int    `yaml:"minLength,omitempty"`
    Pattern     string `yaml:"pattern,omitempty"`
    IsKey       bool   `yaml:"key,omitempty"`
}

type Association struct {
    Name        string `yaml:"name,omitempty"`
    Description string `yaml:"description,omitempty"`
    Type        string `yaml:"type,omitempty"`
    Min         int    `yaml:"min,omitempty"`
    Max         int    `yaml:"max,omitempty"`
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
                                Value:       "Test Site",
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the site.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-site",
                            },
                        },
                        // Associations: map[string]Association{
                        //     "prefix": {
                        //         Name:        "Prefixes",
                        //         Description: "The prefixes assigned to this site.",
                        //         Type:        "prefix",
                        //         Min:         0,
                        //         Max:         math.MaxInt64,
                        //     },
                        // },
                    },
                },
            },
            "ipam": {
                Name:        "ipam",
                Description: "IP Address Management",
                Resources: map[string]Resource{
                    "prefix": {
                        Name:        "prefix",
                        Plural:      "prefixes",
                        Description: "A prefix represents an assignable range of IP addresses",
                        Attributes: map[string]Attribute{
                            "id": {
                                Name:        "ID",
                                Description: "The unique numeric ID of the prefix.",
                                Type:        "int64",
                                IsKey:       true,
                                Value:       "123",
                            },
                            "prefix": {
                                Name:        "Prefix",
                                Description: "The prefix address in CIDR notation.",
                                Type:        "string",
                                MaxLength:   43,
                                MinLength:   1,
                                Pattern:     "^[0-9a-fA-F.:]+/[0-9]+$",
                                Value:       "10.0.0.0/24",
                            },
                        },
                        Associations: map[string]Association{
                            "site": {
                                Name:        "Site",
                                Description: "The site to which this prefix is assigned.",
                                Type:        "site",
                                Min:         0,
                                Max:         1,
                            },
                        },
                    },
                },
            },
        },
    }

    c.resourceMap = make(map[string]Resource)
    for _, service := range c.Services {
        for _, resource := range service.Resources {
            c.resourceMap[resource.Name] = resource
        }
    }

    var err error

    // save the c to a yaml file
    fout, err := os.Create("config.yaml")
    if err != nil {
        return err
    }
    defer fout.Close()

    err = yaml.NewEncoder(fout).Encode(c)
    if err != nil {
        return err
    }

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
                "datasource_example.tmpl": filepath.Join(
                    outputPath,
                    "examples",
                    "data-sources",
                    "netbox_"+strcase.ToSnake(resource.Name),
                    "data-source.tf",
                ),
                "datasources_example.tmpl": filepath.Join(
                    outputPath,
                    "examples",
                    "data-sources",
                    "netbox_"+strcase.ToSnake(resource.Plural),
                    "data-source.tf",
                ),
                "resource_example.tmpl": filepath.Join(
                    outputPath,
                    "examples",
                    "resources",
                    "netbox_"+strcase.ToSnake(resource.Plural),
                    "main.tf",
                ),
            }

            data := TemplateData{
                ServicePackage: serviceKey,
                Resource:       resource,
            }

            for templateName, path := range templateMap {
                fmt.Println("Generating", path)
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

                content = buf.Bytes()

                if strings.HasSuffix(path, ".go") {
                    content, err = format.Source(content)
                    if err != nil {
                        return err
                    }
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

                _, err = f.Write(content)
                if err != nil {
                    return err
                }

            }
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
