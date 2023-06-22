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

    resourceMap map[string]*Resource
}

type Service struct {
    Name        string               `yaml:"name,omitempty"`
    Description string               `yaml:"description,omitempty"`
    Resources   map[string]*Resource `yaml:"resources,omitempty"`
}

type Resource struct {
    Name           string                  `yaml:"name,omitempty"`
    Plural         string                  `yaml:"plural,omitempty"`
    Description    string                  `yaml:"description,omitempty"`
    Attributes     map[string]*Attribute   `yaml:"attributes,omitempty"`
    Associations   map[string]*Association `yaml:"associations,omitempty"`
    WriteableModel string                  `yaml:"writeableModel,omitempty"`
    ReadableModel  string                  `yaml:"readableModel,omitempty"`
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
    Resource       *Resource
    Configuration  *Configuration
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
            "tenancy": {
                Name:        "tenancy",
                Description: "Tenancy provides a framework for logically isolating objects within NetBox.",
                Resources: map[string]*Resource{
                    "tenant": {
                        Name:        "tenant",
                        Plural:      "tenants",
                        Description: "A tenant represents a discrete grouping of resources used for administrative purposes.",
                        Attributes: map[string]*Attribute{
                            "id": {
                                Name:        "ID",
                                Description: "The unique numeric ID of the tenant.",
                                Type:        "int64",
                                IsKey:       true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the tenant.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Tenant",
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the tenant.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-tenant",
                            },
                        },
                        Associations: map[string]*Association{
                            "group": {
                                Name:        "Group",
                                Description: "The tenant group this tenant belongs to.",
                                Type:        "tenant_group",
                                Min:         0,
                                Max:         1,
                            },
                        },
                    },
                    "tenant_group": {
                        Name:        "tenant group",
                        Plural:      "tenant groups",
                        Description: "A tenant group represents a collection of tenants.",
                        Attributes: map[string]*Attribute{
                            "id": {
                                Name:        "ID",
                                Description: "The unique numeric ID of the tenant group.",
                                Type:        "int64",
                                IsKey:       true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the tenant group.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Tenant Group",
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the tenant group.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-tenant-group",
                            },
                        },
                    },
                },
            },
            "dcim": {
                Name:        "dcim",
                Description: "Data Center Infrastructure Management",
                Resources: map[string]*Resource{
                    "manufacturer": {
                        Name:        "manufacturer",
                        Plural:      "manufacturers",
                        Description: "A manufacturer represents a company which produces hardware devices; for example, Juniper or Dell.",
                        Attributes: map[string]*Attribute{
                            "id": {
                                Name:        "ID",
                                Description: "The unique numeric ID of the manufacturer.",
                                Type:        "int64",
                                IsKey:       true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the manufacturer.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Manufacturer",
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the manufacturer.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-manufacturer",
                            },
                        },
                    },
                    "site": {
                        Name:        "site",
                        Plural:      "sites",
                        Description: "A site represents a logical grouping of devices, typically by physical location or purpose. For example, a site might be a data center, an office building, or a distributed network of servers.",
                        Attributes: map[string]*Attribute{
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
                        Associations: map[string]*Association{
                            "tenant": {
                                Name:        "Tenant",
                                Description: "The tenant to which this site is assigned.",
                                Type:        "site",
                                Min:         0,
                                Max:         1,
                            },
                        },
                    },

                },
            },
            "ipam": {
                Name:        "ipam",
                Description: "IP Address Management",
                Resources: map[string]*Resource{
                    "prefix": {
                        Name:        "prefix",
                        Plural:      "prefixes",
                        Description: "A prefix represents an assignable range of IP addresses",
                        Attributes: map[string]*Attribute{
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
                        Associations: map[string]*Association{
                            "site": {
                                Name:        "Site",
                                Description: "The site to which this prefix is assigned.",
                                Type:        "site",
                                Min:         0,
                                Max:         1,
                            },
                            "tenant": {
                                Name:        "Tenant",
                                Description: "The tenant to which this prefix is assigned.",
                                Type:        "tenant",
                                Min:         0,
                                Max:         1,
                            },
                            "role": {
                                Name:        "Role",
                                Description: "The role to which this prefix is assigned.",
                                Type:        "role",
                                Min:         0,
                                Max:         1,
                            },
                        },
                    },
                    "role": {
                        Name:        "role",
                        Plural:      "roles",
                        Description: "A role indicates the function of a prefix or VLAN. For example, you might define Data, Voice, and Security roles. A role can be assigned to multiple prefixes and VLANs.",
                        Attributes: map[string]*Attribute{
                            "id": {
                                Name:        "ID",
                                Description: "The unique numeric ID of the role.",
                                Type:        "int64",
                                IsKey:       true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the role.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Role",
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the role.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-role",
                            },
                        },
                    },
                },
            },
        },
    }

    c.resourceMap = make(map[string]*Resource)
    for _, service := range c.Services {
        for _, resource := range service.Resources {
            c.resourceMap[resource.Name] = resource
        }
    }

    // update writable models
    for _, service := range c.Services {
        for _, resource := range service.Resources {
            switch resource.Name {
            case "role", "manufacturer":
                resource.WriteableModel = strcase.ToCamel(resource.Name)
            default:
                resource.WriteableModel = "Writable" + strcase.ToCamel(resource.Name)
            }
            resource.ReadableModel = strcase.ToCamel(resource.Name)
        }
    }

    err := Save(c)
    if err != nil {
        return err
    }

    err = generateProvider(c, outputPath)
    err = generateInternals(c, outputPath)
    err = generateDataSources(c, outputPath)
    err = generateDataSource(c, outputPath)
    err = generateResources(c, outputPath)
    err = generateExamples(c, outputPath)
    err = generateDocumentation(c, outputPath)

    return nil
}

func Save(c Configuration) error {
    fout, err := os.Create("config.yaml")
    if err != nil {
        return err
    }
    defer fout.Close()

    err = yaml.NewEncoder(fout).Encode(c)
    if err != nil {
        return err
    }
    return nil
}

func generateDocumentation(c Configuration, path string) error {
    // for serviceKey, service := range c.Services {
    //     for _, resource := range service.Resources {
    //         data := TemplateData{
    //             ServicePackage: serviceKey,
    //             Resource:       resource,
    //             Configuration:  &c,
    //         }
    //
    //         err := writeTemplate(
    //             "resource_doc.tmpl", data, filepath.Join(
    //                 path,
    //                 "website",
    //                 "content",
    //                 "docs",
    //                 "r",
    //                 serviceKey+"_"+strcase.ToSnake(resource.Name)+".md",
    //             ),
    //         )
    //
    //     }
    // }
    return nil
}

func generateExamples(c Configuration, path string) error {
    err := writeTemplate(
        "provider.tf.tmpl",
        nil,
        filepath.Join(path, "examples", "provider.tf"),
    )
    if err != nil {
        return err
    }

    err = writeTemplate(
        "terraform.tf.tmpl",
        nil,
        filepath.Join(path, "examples", "terraform.tf"),
    )
    if err != nil {
        return err
    }

    err = generateDatasourceExamples(c, path)
    if err != nil {
        return err
    }

    err = generateDatasourcesExamples(c, path)
    if err != nil {
        return err
    }

    err = generateResourceExamples(c, path)
    if err != nil {
        return err
    }

    return nil
}

func generateDatasourceExamples(c Configuration, path string) error {
    for serviceKey, service := range c.Services {
        for _, resource := range service.Resources {
            data := TemplateData{
                ServicePackage: serviceKey,
                Resource:       resource,
                Configuration:  &c,
            }

            outputPath := filepath.Join(
                path,
                "examples",
                "data-sources",
                "netbox_"+strcase.ToSnake(resource.Name),
                "data-source.tf",
            )
            err := writeTemplate("datasource_example.tmpl", &data, outputPath)
            if err != nil {
                return err
            }

            oldName := filepath.Join(path, "examples", "provider.tf")
            newName := filepath.Join(filepath.Dir(outputPath), "provider.tf")
            err = symlink(newName, oldName)
            if err != nil {
                return err
            }

            oldName = filepath.Join(path, "examples", "terraform.tf")
            newName = filepath.Join(filepath.Dir(outputPath), "terraform.tf")
            err = symlink(newName, oldName)
            if err != nil {
                return err
            }
        }
    }

    return nil
}

func symlink(newName string, oldName string) error {
    relPath, err := filepath.Rel(filepath.Dir(newName), oldName)
    if err != nil {
        return err
    }

    // check if newName exists, and whether it's a symlink. If it's not a symlink, delete it. If it is a symlink, check if it points to the correct file.
    // If it doesn't, delete it. Then create a symlink to the correct file.
    if _, err := os.Stat(newName); err == nil {
        if !isSymlink(newName) {
            err = os.Remove(newName)
            if err != nil {
                return err
            }
        } else {
            link, err := os.Readlink(newName)
            if err != nil {
                return err
            }

            if link != relPath {
                err = os.Remove(newName)
                if err != nil {
                    return err
                }
            }
        }
    }

    // create the symlink if it doesn't exist
    if _, err := os.Stat(newName); os.IsNotExist(err) {
        err = os.Symlink(relPath, newName)
        if err != nil {
            return err
        }
    }
    return nil
}

func isSymlink(name string) bool {
    fi, err := os.Lstat(name)
    if err != nil {
        return false
    }
    return fi.Mode()&os.ModeSymlink != 0
}

func generateDatasourcesExamples(c Configuration, path string) error {
    for serviceKey, service := range c.Services {
        for _, resource := range service.Resources {
            data := TemplateData{
                ServicePackage: serviceKey,
                Resource:       resource,
                Configuration:  &c,
            }

            outputPath := filepath.Join(
                path,
                "examples",
                "data-sources",
                "netbox_"+strcase.ToSnake(resource.Plural),
                "data-source.tf",
            )
            err := writeTemplate("datasources_example.tmpl", &data, outputPath)
            if err != nil {
                return err
            }

            oldName := filepath.Join(path, "examples", "provider.tf")
            newName := filepath.Join(filepath.Dir(outputPath), "provider.tf")
            err = symlink(newName, oldName)
            if err != nil {
                return err
            }

            oldName = filepath.Join(path, "examples", "terraform.tf")
            newName = filepath.Join(filepath.Dir(outputPath), "terraform.tf")
            err = symlink(newName, oldName)
            if err != nil {
                return err
            }
        }
    }

    return nil
}

func generateResourceExamples(c Configuration, path string) error {
    for serviceKey, service := range c.Services {
        for _, resource := range service.Resources {
            data := &TemplateData{
                ServicePackage: serviceKey,
                Resource:       resource,
                Configuration:  &c,
            }

            outputPath := filepath.Join(
                path,
                "examples",
                "resources",
                "netbox_"+strcase.ToSnake(resource.Name),
                "resource.tf",
            )
            err := writeTemplate("resource_example.tmpl", data, outputPath)
            if err != nil {
                return err
            }

            outputPath = filepath.Join(
                path,
                "examples",
                "resources",
                "netbox_"+strcase.ToSnake(resource.Name),
                "import.sh",
            )
            err = writeTemplate("import.sh.tmpl", data, outputPath)
            if err != nil {
                return err
            }

            oldName := filepath.Join(path, "examples", "provider.tf")
            newName := filepath.Join(filepath.Dir(outputPath), "provider.tf")
            err = symlink(newName, oldName)
            if err != nil {
                return err
            }

            oldName = filepath.Join(path, "examples", "terraform.tf")
            newName = filepath.Join(filepath.Dir(outputPath), "terraform.tf")
            err = symlink(newName, oldName)
            if err != nil {
                return err
            }
        }
    }
    return nil
}

func generateResources(c Configuration, path string) error {

    for serviceKey, service := range c.Services {
        for _, resource := range service.Resources {
            data := &TemplateData{
                ServicePackage: serviceKey,
                Resource:       resource,
                Configuration:  &c,
            }

            outputPath := filepath.Join(
                path,
                "internal",
                serviceKey,
                strcase.ToSnake(resource.Name)+"_resource_gen.go",
            )

            err := writeTemplate("resource.tmpl", data, outputPath)
            if err != nil {
                return err
            }
        }
    }

    return nil
}

func generateDataSources(c Configuration, path string) error {
    for serviceKey, service := range c.Services {
        for _, resource := range service.Resources {
            data := &TemplateData{
                ServicePackage: serviceKey,
                Resource:       resource,
                Configuration:  &c,
            }

            outputPath := filepath.Join(
                path,
                "internal",
                serviceKey,
                strcase.ToSnake(resource.Plural)+"_data_source_gen.go",
            )

            err := writeTemplate("datasources.tmpl", data, outputPath)
            if err != nil {
                return err
            }
        }
    }
    return nil
}

func generateDataSource(c Configuration, path string) error {
    for serviceKey, service := range c.Services {
        for _, resource := range service.Resources {
            data := &TemplateData{
                ServicePackage: serviceKey,
                Resource:       resource,
                Configuration:  &c,
            }

            outputPath := filepath.Join(
                path,
                "internal",
                serviceKey,
                strcase.ToSnake(resource.Name)+"_data_source_gen.go",
            )

            err := writeTemplate("datasource.tmpl", data, outputPath)
            if err != nil {
                return err
            }
        }
    }
    return nil
}

func generateInternals(c Configuration, path string) error {
    return nil
}

func generateProvider(c Configuration, path string) error {
    data := &TemplateData{
        Configuration: &c,
    }

    outputPath := filepath.Join(path, "internal", "provider", "provider_gen.go")
    err := writeTemplate("provider.tmpl", data, outputPath)
    if err != nil {
        return err
    }

    return nil
}

func writeTemplate(templateName string, data *TemplateData, path string) error {
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
        return fmt.Errorf("error executing template '%s': %s", templateName, err)
    }

    content = buf.Bytes()

    if strings.HasSuffix(path, ".go") {
        content, err = format.Source(content)
        if err != nil {
            return fmt.Errorf(
                "error formatting go source generated by template '%s': %s",
                templateName,
                err,
            )
        }
    }

    d := filepath.Dir(path)
    err = os.MkdirAll(d, 0755)
    if err != nil {
        return fmt.Errorf("error creating directory (%s): %s", d, err)
    }

    f, err := os.OpenFile(path, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0644)

    if err != nil {
        return fmt.Errorf("error creating file (%s): %s", path, err)
    }
    defer f.Close()

    _, err = f.Write(content)
    if err != nil {
        return fmt.Errorf("error writing file (%s): %s", path, err)
    }
    return nil
}
