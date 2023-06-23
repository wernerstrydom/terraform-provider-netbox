package seed

import (
    "embed"
    "fmt"
    "io/fs"
    "os"
    "os/exec"
    "path/filepath"
    "regexp"
    "strings"
    "text/template"

    "github.com/iancoleman/strcase"
    "gopkg.in/yaml.v3"
)

// Data looks something like this
// manufacturer: 3Com
// model: 4200G 12 port
// slug: 3com-4200g-12-port
// part_number: 3CR17660-91
// u_height: 1
// is_full_depth: false
type Data struct {
    Manufacturer string `yaml:"manufacturer"`
    Model        string `yaml:"model"`
    Slug         string `yaml:"slug"`
    PartNumber   string `yaml:"part_number"`
    UHeight      int    `yaml:"u_height"`
    IsFullDepth  bool   `yaml:"is_full_depth"`
}

type Manufacturer struct {
    Name string `yaml:"name"`
}

type DeviceType struct {
    Model       string `yaml:"model"`
    Slug        string `yaml:"slug"`
    PartNumber  string `yaml:"part_number"`
    UHeight     int    `yaml:"u_height"`
    IsFullDepth bool   `yaml:"is_full_depth"`
}

//go:embed templates/*
var templates embed.FS

var FuncMap = template.FuncMap{
    "snakeCase":  strcase.ToSnake,
    "pascalCase": strcase.ToCamel,
    "camelCase":  strcase.ToLowerCamel,
    "kebabCase":  strcase.ToKebab,
    "sanitize": func(s string) string {
        // using a regex, replace all non-alphanumeric characters with a space
        // and then trim the space
        return strings.TrimSpace(
            regexp.MustCompile("[^a-zA-Z0-9]+").ReplaceAllString(s, " "),
        )
    },
    "id": func(s string) string {
        // check if s starts with a non-alpha character, and inject an underscore
        // if it does
        if regexp.MustCompile("^[^a-zA-Z]").MatchString(s) {
            s = "_" + s
        }
        return s
    },
}

func Seed() error {

    // get the temporary directory, and create a temporary directory for the backup
    // if it doesn't exist
    tmpDir, err := os.MkdirTemp(os.TempDir(), "terraform-provider-netbox-*")
    if err != nil {
        fmt.Println(err)
        return err
    }
    fmt.Println("Using:", tmpDir)
    defer func() {
        fmt.Println("Removing ", tmpDir)
        os.RemoveAll(tmpDir)
    }()

    libraryPath := filepath.Join(tmpDir, "devicetype-library")

    // git clone
    fmt.Println("Cloning devicetype-library")
    c := exec.Command("git", "clone", "https://github.com/netbox-community/devicetype-library.git", libraryPath)
    err = c.Run()
    if err != nil {
        fmt.Println(err)
        return err
    }

    model := make(map[string][]DeviceType)

    // walk the device-types directory, and print every yml file
    deviceTypesPath := filepath.Join(libraryPath, "device-types")
    err = filepath.Walk(
        deviceTypesPath, func(path string, info os.FileInfo, err error) error {
            if err != nil {
                return err
            }

            if info.IsDir() {
                return nil
            }

            // check if the file is a yml file
            if filepath.Ext(path) != ".yml" && filepath.Ext(path) != ".yaml" {
                return nil
            }

            // read the file into data
            data := Data{}
            b, err := os.ReadFile(path)
            if err != nil {
                return fmt.Errorf("failed to read file: %w", err)
            }

            err = yaml.Unmarshal(b, &data)
            if err != nil {
                return fmt.Errorf("failed to unmarshal yaml: %w", err)
            }

            // create a new device type
            deviceType := DeviceType{
                Model:       data.Model,
                Slug:        data.Slug,
                PartNumber:  data.PartNumber,
                UHeight:     data.UHeight,
                IsFullDepth: data.IsFullDepth,
            }

            model[data.Manufacturer] = append(model[data.Manufacturer], deviceType)
            return nil
        },
    )

    if err != nil {
        return err
    }

    // create the examples/device-library directory where we'll generate all the
    // device types
    examplesPath := filepath.Join("generated", "examples", "device-library")
    err = os.MkdirAll(examplesPath, 0755)
    if err != nil {
        return err
    }

    err = fs.WalkDir(
        templates, "templates", func(path string, d fs.DirEntry, err error) error {
            if err != nil {
                return err
            }

            if d.IsDir() {
                return nil
            }

            var b []byte
            b, err = templates.ReadFile(path)
            if err != nil {
                return err
            }

            outputPath := filepath.Join(examplesPath, strings.TrimPrefix(path, "templates/"))
            if strings.HasSuffix(outputPath, ".tmpl") {
                outputPath = strings.TrimSuffix(outputPath, ".tmpl")

                tmpl, err := template.New("Default").Funcs(FuncMap).Parse(string(b))
                if err != nil {
                    return err
                }

                var sb strings.Builder
                err = tmpl.Execute(&sb, model)
                if err != nil {
                    return err
                }

                b = []byte(sb.String())
            }

            err = os.WriteFile(outputPath, b, 0644)
            if err != nil {
                return err
            }

            return nil
        },
    )

    if err != nil {
        return err
    }

    return nil
}
