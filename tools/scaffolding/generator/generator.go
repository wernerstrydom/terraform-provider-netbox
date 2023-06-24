package generator

import (
    "bytes"
    "embed"
    _ "embed"
    "fmt"
    "go/format"
    "io/fs"
    "os"
    "path/filepath"
    "strings"
    "text/template"

    "github.com/iancoleman/strcase"

    "terraform-provider-netbox/tools/ptr"
)

//go:embed templates/*/*
var templates embed.FS

func init() {
    strcase.ConfigureAcronym("API", "api")
    strcase.ConfigureAcronym("SQL", "sql")
    strcase.ConfigureAcronym("ID", "ID")
}

var c = Configuration{
    services: []Service{
        {
            Name:        "tenancy",
            Description: "Tenancy provides a framework for logically isolating objects within NetBox.",
            Resources: []Resource{
                {
                    Name:        "tenant",
                    Plural:      "tenants",
                    Description: "A tenant represents a discrete grouping of resources used for administrative purposes.",
                    Attributes: []Attribute{
                        &IdAttribute{
                            description: "The unique numeric ID of the tenant.",
                        },
                        &NameAttribute{
                            description: "The name of the tenant.",
                        },
                        &SlugAttribute{
                            description: "A unique slug identifier for the tenant.",
                        },
                        &DescriptionAttribute{
                            description: "A brief description of the tenant.",
                        },
                    },
                    Associations: []Association{
                        {
                            Name:        "Group",
                            Description: "The tenant group this tenant belongs to.",
                            Type:        "tenant_group",
                            Min:         0,
                            Max:         1,
                            IsNullable:  true,
                        },
                    },
                },
                {
                    Name:        "tenant group",
                    Plural:      "tenant groups",
                    Description: "A tenant group represents a collection of tenants.",
                    Attributes: []Attribute{
                        &IdAttribute{
                            description: "The unique numeric ID of the tenant group.",
                        },
                        &NameAttribute{
                            description: "The name of the tenant group.",
                        },
                        &SlugAttribute{
                            description: "A unique slug identifier for the tenant group.",
                        },
                        &DescriptionAttribute{
                            description: "A brief description of the tenant group.",
                        },
                    },
                },
            },
        },
        {
            Name:        "dcim",
            Description: "Data Center Infrastructure Management",
            Resources: []Resource{
                {
                    Name:        "manufacturer",
                    Plural:      "manufacturers",
                    Description: "A manufacturer represents a company which produces hardware devices; for example, Juniper or Dell.",
                    Attributes: []Attribute{
                        &IdAttribute{
                            description: "The unique numeric ID of the manufacturer.",
                        },
                        &NameAttribute{
                            description: "The name of the manufacturer.",
                        },
                        &SlugAttribute{
                            description: "A unique slug identifier for the manufacturer.",
                        },
                        &DescriptionAttribute{
                            description: "A brief description of the manufacturer.",
                        },
                    },
                },
                {
                    Name:        "device type",
                    Plural:      "device types",
                    Description: "A device type represents a particular manufacturer's model of device. For example, N9K-C9396PX or PowerEdge R630.",
                    Attributes: []Attribute{
                        &IdAttribute{
                            description: "The unique numeric ID of the device type.",
                        },
                        &StringAttribute{
                            name:        "Model",
                            description: "The model name of the device type.",
                            maxLength:   100,
                            minLength:   1,
                            value:       "Test Device Type",
                            isNullable:  true,
                        },
                        &StringAttribute{
                            name:        "Part Number",
                            description: "The part number associated with the device type.",
                            maxLength:   50,
                            minLength:   0,
                            isNullable:  false,
                        },
                        &SlugAttribute{
                            description: "A unique slug identifier for the device type.",
                        },
                        &DescriptionAttribute{
                            description: "A brief description of the device type.",
                        },
                        &Float64Attribute{
                            name:        "U Height",
                            description: "The height of the device type, in rack units.",
                            isNullable:  true,
                        },
                        &Float64Attribute{
                            name:        "Weight",
                            description: "The weight of the device type.",
                            isNullable:  true,
                        },
                        &BoolAttribute{
                            name:        "Is Full Depth",
                            description: "Indicates whether this device type consumes the full depth of its parent rack.",
                            isNullable:  false,
                        },
                    },
                    Associations: []Association{
                        {
                            Name:        "Manufacturer",
                            Description: "The device type's manufacturer.",
                            Type:        "manufacturer",
                            Min:         1,
                            Max:         1,
                            IsNullable:  true,
                        },
                    },
                },
                {
                    Name:        "site",
                    Plural:      "sites",
                    Description: "A site represents a logical grouping of devices, typically by physical location or purpose. For example, a site might be a data center, an office building, or a distributed network of servers.",
                    Attributes: []Attribute{
                        &IdAttribute{
                            description: "The unique numeric ID of the site.",
                        },
                        &NameAttribute{
                            description: "The name of the site.",
                        },
                        &SlugAttribute{
                            description: "A unique slug identifier for the site.",
                        },
                        &DescriptionAttribute{
                            description: "A brief description of the site.",
                        },
                    },
                    Associations: []Association{
                        {
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
        {
            Name:        "ipam",
            Description: "IP Address Management",
            Resources: []Resource{
                {
                    Name:        "prefix",
                    Plural:      "prefixes",
                    Description: "A prefix represents an assignable range of IP addresses",
                    Attributes: []Attribute{
                        &IdAttribute{
                            description: "The unique numeric ID of the prefix.",
                        },
                        &StringAttribute{
                            name:        "Prefix",
                            description: "The prefix address in CIDR notation.",
                            maxLength:   43,
                            minLength:   1,
                            pattern:     "^[0-9a-fA-F.:]+/[0-9]+$",
                            value:       "10.0.0.0/24",
                            isNullable:  true,
                        },
                        &StringAttribute{
                            name:         "Description",
                            description:  "A brief description of the prefix.",
                            maxLength:    200,
                            isNullable:   false,
                            defaultValue: ptr.String(""),
                        },
                    },
                    Associations: []Association{
                        {
                            Name:        "Site",
                            Description: "The site to which this prefix is assigned.",
                            Type:        "site",
                            Min:         0,
                            Max:         1,
                            IsNullable:  true,
                        },
                        {
                            Name:        "Tenant",
                            Description: "The tenant to which this prefix is assigned.",
                            Type:        "tenant",
                            Min:         0,
                            Max:         1,
                            IsNullable:  true,
                        },
                        {
                            Name:        "Role",
                            Description: "The role to which this prefix is assigned.",
                            Type:        "role",
                            Min:         0,
                            Max:         1,
                            IsNullable:  true,
                        },
                    },
                },
                {
                    Name:        "role",
                    Plural:      "roles",
                    Description: "A role indicates the function of a prefix or VLAN. For example, you might define Data, Voice, and Security roles. A role can be assigned to multiple prefixes and VLANs.",
                    Attributes: []Attribute{
                        &IdAttribute{
                            description: "The unique numeric ID of the role.",
                        },
                        &NameAttribute{
                            description: "The name of the role.",
                        },
                        &SlugAttribute{
                            description: "A unique slug identifier for the role.",
                        },
                        &StringAttribute{
                            name:         "Description",
                            description:  "A brief description of the role.",
                            maxLength:    200,
                            isNullable:   false,
                            defaultValue: ptr.String(""),
                        },
                    },
                },
            },
        },
    },
}

func Generate(outputPath string) error {

    c.resourceMap = make(map[string]*Resource)
    for i, service := range c.services {
        for j, resource := range service.Resources {
            c.resourceMap[resource.Name] = &c.services[i].Resources[j]
        }
    }

    // update writable models
    for i := range c.services {
        for j := range c.services[i].Resources {
            switch c.services[i].Resources[j].Name {
            case "role", "manufacturer":
                c.services[i].Resources[j].WriteableModel = strcase.ToCamel(c.services[i].Resources[j].Name)
            default:
                c.services[i].Resources[j].WriteableModel = "Writable" + strcase.ToCamel(c.services[i].Resources[j].Name)
            }
            c.services[i].Resources[j].ReadableModel = strcase.ToCamel(c.services[i].Resources[j].Name)
        }
    }

    err := c.Save("config.yaml")
    if err != nil {
        return err
    }

    err = generate(c, outputPath)
    if err != nil {
        return fmt.Errorf("error generating: %s", err)
    }

    return nil
}

type FileScope int

const (
    FileScopeProvider FileScope = iota
    FileScopeResource
)

type FileAction int

const (
    FileActionCopy FileAction = iota
    FileActionRender
)

type FileControl struct {
    Path   string     `yaml:"path,omitempty"`
    Scope  FileScope  `yaml:"scope,omitempty"`
    Action FileAction `yaml:"action,omitempty"`
}

type Control struct {
    // Templates is a mapping between the template name and the output filename
    Templates map[string]FileControl `yaml:"templates,omitempty"`
}

var control = Control{
    Templates: map[string]FileControl{
        "examples/data-sources/datasource.tf.tpl": {
            Path:   "examples/data-sources/netbox_{{ snakeCase .Resource.Name }}/datasource.tf",
            Scope:  FileScopeResource,
            Action: FileActionRender,
        },
        "examples/data-sources/datasources.tf.tpl": {
            Path:   "examples/data-sources/netbox_{{ snakeCase .Resource.Plural }}/datasource.tf",
            Scope:  FileScopeResource,
            Action: FileActionRender,
        },
        "examples/provider/provider.tf.tpl": {
            Path:   "examples/provider/provider.tf",
            Scope:  FileScopeProvider,
            Action: FileActionRender,
        },
        "examples/provider.tf.tpl": {
            Path:   "examples/provider.tf",
            Scope:  FileScopeProvider,
            Action: FileActionCopy,
        },
        "examples/terraform.tf.tpl": {
            Path:   "examples/terraform.tf",
            Scope:  FileScopeProvider,
            Action: FileActionCopy,
        },
        "examples/resources/resource.tf.tpl": {
            Path:   "examples/resources/netbox_{{ snakeCase .Resource.Name }}/resource.tf",
            Scope:  FileScopeResource,
            Action: FileActionRender,
        },
        "examples/resources/import.sh.tpl": {
            Path:   "examples/resources/netbox_{{ snakeCase .Resource.Name }}/import.sh",
            Scope:  FileScopeResource,
            Action: FileActionRender,
        },
        "internal/datasource.go.tpl": {
            Path:   "internal/{{ snakeCase .ServicePackage }}/{{ snakeCase .Resource.Name }}_data_source.go",
            Scope:  FileScopeResource,
            Action: FileActionRender,
        },
        "internal/datasources.go.tpl": {
            Path:   "internal/{{ snakeCase .ServicePackage }}/{{ snakeCase .Resource.Plural }}_data_source.go",
            Scope:  FileScopeResource,
            Action: FileActionRender,
        },
        "internal/provider.go.tpl": {
            Path:   "internal/provider/provider.go",
            Scope:  FileScopeProvider,
            Action: FileActionRender,
        },
        "internal/resource.go.tpl": {
            Path:   "internal/{{ snakeCase .ServicePackage }}/{{ snakeCase .Resource.Name }}_resource.go",
            Scope:  FileScopeResource,
            Action: FileActionRender,
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
                data := TemplateData{
                    Configuration: &configuration,
                }

                err = render3(path, outputPath, c, data)
                if err != nil {
                    return err
                }

            } else {
                // the output path should be a template, so we need to render it
                for _, service := range configuration.services {
                    for _, resource := range service.Resources {
                        data := TemplateData{
                            ServicePackage: strcase.ToSnake(service.Name),
                            Resource:       &resource,
                            Configuration:  &configuration,
                        }
                        err = render3(path, outputPath, c, data)
                        if err != nil {
                            return err
                        }
                    }
                }
            }

            return nil
        },
    )

}

func render3(key string, outputPath string, c FileControl, data TemplateData) error {
    var err error
    var path string
    path = filepath.Join(outputPath, renderPath(c.Path, data))
    err = os.MkdirAll(filepath.Dir(path), 0755)
    if err != nil {
        return err
    }

    var contents []byte
    contents, err = templates.ReadFile(key)
    if err != nil {
        return err
    }
    if c.Action == FileActionRender {
        fmt.Println("rendering template ", key)
        contents, err = renderTemplate(contents, data)
        if err != nil {
            return err
        }
        path = strings.TrimSuffix(path, ".tpl")
    }

    if filepath.Ext(path) == ".go" {
        fmt.Println("formatting ", path)
        contents, err = format.Source(contents)
        if err != nil {
            return err
        }
    }

    err = os.WriteFile(path, contents, 0644)
    if err != nil {
        return err
    }

    fmt.Println("generated ", path)
    return nil
}

func renderTemplate(templateBytes []byte, data TemplateData) ([]byte, error) {
    t := template.Must(template.New("resource").Funcs(funcMap).Parse(string(templateBytes)))
    var buf bytes.Buffer
    err := t.Execute(&buf, data)
    if err != nil {
        return nil, err
    }
    s := buf.String()
    s = s
    return buf.Bytes(), nil
}

func renderPath(pathTemplate string, data TemplateData) string {
    t := template.Must(template.New("path").Funcs(funcMap).Parse(pathTemplate))
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
