package generator

import (
    "bytes"
    "embed"
    _ "embed"
    "fmt"
    "io/fs"
    "os"
    "path/filepath"
    "strings"
    "text/template"

    "github.com/iancoleman/strcase"
    "gopkg.in/yaml.v3"
)

//go:embed templates/*/*
var templates embed.FS

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
    Name         string `yaml:"name,omitempty"`
    Description  string `yaml:"description,omitempty"`
    Value        string `yaml:"value,omitempty"`
    Type         string `yaml:"type,omitempty"`
    ReadOnly     bool   `yaml:"readonly,omitempty"`
    MaxLength    int    `yaml:"maxLength,omitempty"`
    MinLength    int    `yaml:"minLength,omitempty"`
    Pattern      string `yaml:"pattern,omitempty"`
    IsKey        bool   `yaml:"key,omitempty"`
    IsNullable   bool   `yaml:"nullable,omitempty"`
    DefaultValue any    `yaml:"default,omitempty"`
}

type Association struct {
    Name        string `yaml:"name,omitempty"`
    Description string `yaml:"description,omitempty"`
    Type        string `yaml:"type,omitempty"`
    Min         int    `yaml:"min,omitempty"`
    Max         int    `yaml:"max,omitempty"`
    IsNullable  bool   `yaml:"nullable,omitempty"`
}

type TemplateData struct {
    ServicePackage string
    Resource       *Resource
    Configuration  *Configuration
}

var funcMap = template.FuncMap{
    "lower":      strings.ToLower,
    "upper":      strings.ToUpper,
    "title":      func(s string) string { return strings.Title(strcase.ToDelimited(s, ' ')) },
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
                                IsNullable:  true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the tenant.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Tenant",
                                IsNullable:  true,
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the tenant.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-tenant",
                                IsNullable:  true,
                            },
                            "description": {
                                Name:         "Description",
                                Description:  "A brief description of the tenant.",
                                Type:         "string",
                                MaxLength:    200,
                                IsNullable:   false,
                                DefaultValue: "",
                            },
                        },
                        Associations: map[string]*Association{
                            "group": {
                                Name:        "Group",
                                Description: "The tenant group this tenant belongs to.",
                                Type:        "tenant_group",
                                Min:         0,
                                Max:         1,
                                IsNullable:  true,
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
                                IsNullable:  true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the tenant group.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Tenant Group",
                                IsNullable:  true,
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the tenant group.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-tenant-group",
                                IsNullable:  true,
                            },
                            "description": {
                                Name:         "Description",
                                Description:  "A brief description of the tenant group.",
                                Type:         "string",
                                MaxLength:    200,
                                IsNullable:   false,
                                DefaultValue: "",
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
                                IsNullable:  true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the manufacturer.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Manufacturer",
                                IsNullable:  true,
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the manufacturer.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-manufacturer",
                                IsNullable:  true,
                            },
                            "description": {
                                Name:         "Description",
                                Description:  "A brief description of the manufacturer.",
                                Type:         "string",
                                MaxLength:    200,
                                IsNullable:   false,
                                DefaultValue: "",
                            },
                        },
                    },
                    "device type": {
                        Name:        "device type",
                        Plural:      "device types",
                        Description: "A device type represents a particular manufacturer's model of device. For example, N9K-C9396PX or PowerEdge R630.",
                        Attributes: map[string]*Attribute{
                            "id": {
                                Name:        "ID",
                                Description: "The unique numeric ID of the device type.",
                                Type:        "int64",
                                IsKey:       true,
                                IsNullable:  true,
                            },
                            "model": {
                                Name:        "Model",
                                Description: "The model name of the device type.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Device Type",
                                IsNullable:  true,
                            },
                            "part number": {
                                Name:        "Part Number",
                                Description: "The part number associated with the device type.",
                                Type:        "string",
                                MaxLength:   50,
                                MinLength:   0,
                                IsNullable:  false,
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the device type.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-device-type",
                                IsNullable:  true,
                            },
                            "description": {
                                Name:         "Description",
                                Description:  "A brief description of the device type.",
                                Type:         "string",
                                MaxLength:    200,
                                IsNullable:   false,
                                DefaultValue: "",
                            },
                            // "uheight": {
                            //     Name:        "U Height",
                            //     Description: "The height of the device type, in rack units.",
                            //     Type:        "float64",
                            //     IsNullable:  true,
                            // },
                            // "weight": {
                            //     Name:        "Weight",
                            //     Description: "The weight of the device type, in kilograms.",
                            //     Type:        "float64",
                            //     IsNullable:  true,
                            // },
                            // "is full depth": {
                            //     Name:        "Is Full Depth",
                            //     Description: "Indicates whether this device type consumes the full depth of its parent rack.",
                            //     Type:        "bool",
                            //     IsNullable:  true,
                            // },

                        },
                        Associations: map[string]*Association{
                            "manufacturer": {
                                Name:        "Manufacturer",
                                Description: "The device type's manufacturer.",
                                Type:        "manufacturer",
                                Min:         1,
                                Max:         1,
                                IsNullable:  true,
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
                                IsNullable:  true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the site.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Site",
                                IsNullable:  true,
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the site.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-site",
                                IsNullable:  true,
                            },
                            "description": {
                                Name:         "Description",
                                Description:  "A brief description of the site.",
                                Type:         "string",
                                MaxLength:    200,
                                IsNullable:   false,
                                DefaultValue: "",
                            },
                        },
                        Associations: map[string]*Association{
                            "tenant": {
                                Name:        "Tenant",
                                Description: "The tenant to which this site is assigned.",
                                Type:        "site",
                                Min:         0,
                                Max:         1,
                                IsNullable:  true,
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
                                IsNullable:  true,
                            },
                            "prefix": {
                                Name:        "Prefix",
                                Description: "The prefix address in CIDR notation.",
                                Type:        "string",
                                MaxLength:   43,
                                MinLength:   1,
                                Pattern:     "^[0-9a-fA-F.:]+/[0-9]+$",
                                Value:       "10.0.0.0/24",
                                IsNullable:  true,
                            },
                            "description": {
                                Name:         "Description",
                                Description:  "A brief description of the prefix.",
                                Type:         "string",
                                MaxLength:    200,
                                IsNullable:   false,
                                DefaultValue: "",
                            },
                        },
                        Associations: map[string]*Association{
                            "site": {
                                Name:        "Site",
                                Description: "The site to which this prefix is assigned.",
                                Type:        "site",
                                Min:         0,
                                Max:         1,
                                IsNullable:  true,
                            },
                            "tenant": {
                                Name:        "Tenant",
                                Description: "The tenant to which this prefix is assigned.",
                                Type:        "tenant",
                                Min:         0,
                                Max:         1,
                                IsNullable:  true,
                            },
                            "role": {
                                Name:        "Role",
                                Description: "The role to which this prefix is assigned.",
                                Type:        "role",
                                Min:         0,
                                Max:         1,
                                IsNullable:  true,
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
                                IsNullable:  true,
                            },
                            "name": {
                                Name:        "Name",
                                Description: "The name of the role.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Value:       "Test Role",
                                IsNullable:  true,
                            },
                            "slug": {
                                Name:        "Slug",
                                Description: "A unique slug identifier for the role.",
                                Type:        "string",
                                MaxLength:   100,
                                MinLength:   1,
                                Pattern:     "^[-a-zA-Z0-9_]+$",
                                Value:       "test-role",
                                IsNullable:  true,
                            },
                            "description": {
                                Name:         "Description",
                                Description:  "A brief description of the role.",
                                Type:         "string",
                                MaxLength:    200,
                                IsNullable:   false,
                                DefaultValue: "",
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

    err := generate(c, outputPath)
    if err != nil {
        return fmt.Errorf("error generating: %s", err)
    }

    err = Save(c)
    if err != nil {
        return err
    }

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

type FileScope int

const (
    FileScopeProvider FileScope = iota
    FileScopeResource
)

type FileControl struct {
    Path  string    `yaml:"path,omitempty"`
    Scope FileScope `yaml:"scope,omitempty"`
}

type Control struct {
    // Templates is a mapping between the template name and the output filename
    Templates map[string]FileControl `yaml:"templates,omitempty"`
}

var control = Control{
    Templates: map[string]FileControl{
        "examples/data-sources/datasource.tf.tpl": {
            Path:  "examples/data-sources/netbox_{{ snakeCase .Resource.Name }}/datasource.tf",
            Scope: FileScopeResource,
        },
        "examples/data-sources/datasources.tf.tpl": {
            Path:  "examples/data-sources/netbox_{{ snakeCase .Resource.Plural }}/datasource.tf",
            Scope: FileScopeResource,
        },
        "examples/provider/provider.tf.tpl": {
            Path:  "examples/provider/provider.tf",
            Scope: FileScopeProvider,
        },
        "examples/provider.tf.tpl": {
            Path:  "examples/provider.tf",
            Scope: FileScopeProvider,
        },
        "examples/terraform.tf.tpl": {
            Path:  "examples/terraform.tf",
            Scope: FileScopeProvider,
        },
        "examples/resources/resource.tf.tpl": {
            Path:  "examples/resources/netbox_{{ snakeCase .Resource.Name }}/resource.tf",
            Scope: FileScopeResource,
        },
        "examples/resources/import.sh.tpl": {
            Path:  "examples/resources/netbox_{{ snakeCase .Resource.Name }}/import.sh",
            Scope: FileScopeResource,
        },
        "internal/datasource.go.tpl": {
            Path:  "internal/{{ snakeCase .ServicePackage }}/{{ snakeCase .Resource.Name }}_data_source.go",
            Scope: FileScopeResource,
        },
        "internal/datasources.go.tpl": {
            Path:  "internal/{{ snakeCase .ServicePackage }}/{{ snakeCase .Resource.Plural }}_data_source.go",
            Scope: FileScopeResource,
        },
        "internal/provider.go.tpl": {
            Path:  "internal/provider/provider.go",
            Scope: FileScopeProvider,
        },
        "internal/resource.go.tpl": {
            Path:  "internal/{{ snakeCase .ServicePackage }}/{{ snakeCase .Resource.Name }}_resource.go",
            Scope: FileScopeResource,
        },
    },
}

func generate(configuration Configuration, outputPath string) error {
    return fs.WalkDir(
        templates, ".", func(path string, d fs.DirEntry, err error) error {
            if err != nil {
                return err
            }

            if d.IsDir() {
                return nil
            }

            key := strings.TrimPrefix(path, "templates/")
            c, ok := control.Templates[key]
            if !ok {
                return fmt.Errorf("no control for %s", key)
            }

            if c.Scope == FileScopeProvider {
                // the output path should not be a template, so we can copy it directly
                outputPath := filepath.Join(outputPath, c.Path)
                err = os.MkdirAll(filepath.Dir(outputPath), 0755)
                if err != nil {
                    return err
                }

                var contents []byte
                contents, err = templates.ReadFile(path)
                if err != nil {
                    return err
                }
                ext := filepath.Ext(path)
                if ext == ".tpl" {
                    data := TemplateData{
                        Configuration: &configuration,
                    }
                    contents, err = renderTemplate(contents, data)
                    if err != nil {
                        return err
                    }
                    outputPath = strings.TrimSuffix(outputPath, ".tpl")
                }
                err = os.WriteFile(outputPath, contents, 0644)
                if err != nil {
                    return err
                }

            } else {
                // the output path should be a template, so we need to render it
                for serviceKey, service := range configuration.Services {
                    for _, resource := range service.Resources {
                        data := TemplateData{
                            ServicePackage: serviceKey,
                            Resource:       resource,
                            Configuration:  &configuration,
                        }
                        outputPath := filepath.Join(outputPath, renderPath(c.Path, data))
                        err = os.MkdirAll(filepath.Dir(outputPath), 0755)
                        if err != nil {
                            return err
                        }

                        var contents []byte
                        contents, err = templates.ReadFile(path)
                        if err != nil {
                            return err
                        }
                        ext := filepath.Ext(path)
                        if ext == ".tpl" {
                            contents, err = renderTemplate(contents, data)
                            if err != nil {
                                return err
                            }
                            outputPath = strings.TrimSuffix(outputPath, ".tpl")
                        }
                        err = os.WriteFile(outputPath, contents, 0644)
                        if err != nil {
                            return err
                        }
                    }
                }
            }

            fmt.Println(path)

            return nil
        },
    )

}

func renderTemplate(templateBytes []byte, data TemplateData) ([]byte, error) {
    t := template.Must(template.New("resource").Funcs(FuncMap).Parse(string(templateBytes)))
    var buf bytes.Buffer
    err := t.Execute(&buf, data)
    if err != nil {
        return nil, err
    }
    return buf.Bytes(), nil
}

var FuncMap = template.FuncMap{
    "snakeCase":  strcase.ToSnake,
    "pascalCase": strcase.ToCamel,
    "camelCase":  strcase.ToLowerCamel,
}

func renderPath(pathTemplate string, data TemplateData) string {
    t := template.Must(template.New("path").Funcs(FuncMap).Parse(pathTemplate))
    var buf bytes.Buffer
    err := t.Execute(&buf, data)
    if err != nil {
        panic(err)
    }
    return buf.String()
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
