package main

import (
    _ "embed"
    "os"
    "path/filepath"
    "strings"
    "text/template"

    "gopkg.in/yaml.v3"
)

type Attribute struct {
    Name        string   `yaml:"name"`
    Type        string   `yaml:"type,omitempty"`
    IsArray     bool     `yaml:"array,omitempty"`
    Description string   `yaml:"description,omitempty"`
    Tag         string   `yaml:"tag,omitempty"`
    IsNullable  bool     `yaml:"nullable,omitempty"`
    Required    bool     `yaml:"required,omitempty"`
    Optional    bool     `yaml:"optional,omitempty"`
    Computed    bool     `yaml:"computed,omitempty"`
    Sensitive   bool     `yaml:"sensitive,omitempty"`
    ForceNew    bool     `yaml:"force_new,omitempty"`
    Default     string   `yaml:"default,omitempty"`
    ReadOnly    bool     `yaml:"readonly,omitempty"`
    Values      []string `yaml:"values,omitempty"`
    MinLength   int      `yaml:"min_length,omitempty"`
    MaxLength   int      `yaml:"max_length,omitempty"`
}

type Model struct {
    Name        string      `yaml:"name"`
    Description string      `yaml:"description"`
    Package     string      `yaml:"package"`
    Attributes  []Attribute `yaml:"attributes"`
}

type Document struct {
    Models []Model `yaml:"models"`
}

func LoadDocument(path string) (*Document, error) {
    b, err := os.ReadFile(path)
    if err != nil {
        return nil, err
    }

    var doc Document
    if err := yaml.Unmarshal(b, &doc); err != nil {
        return nil, err
    }

    return &doc, nil
}

func (d *Document) Save(path string) error {

    b, err := yaml.Marshal(d)
    if err != nil {
        return err
    }

    if err := os.WriteFile(path, b, 0644); err != nil {
        return err
    }

    return nil

}

func main() {
    d, err := LoadDocument("data.yml")
    if err != nil {
        panic(err)
    }

    err = d.Save("data2.yml")
    if err != nil {
        panic(err)
    }

    path := filepath.Join("..", "internal")
    for _, model := range d.Models {
        err = generateDataSource(path, model)
        if err != nil {
            panic(err)
        }

        err = generateResource(path, model)
        if err != nil {
            panic(err)
        }
    }
}

//go:embed templates/data_source.go.tpl
var dataSourceTemplate string

//go:embed templates/resource.go.tpl
var resourceTemplate string

func generateDataSource(path string, model Model) error {
    path = filepath.Join(path, strings.ToLower(model.Package), strings.ToLower(model.Name)+"_data_source.go")

    dir := filepath.Dir(path)
    if _, err := os.Stat(dir); os.IsNotExist(err) {
        err = os.MkdirAll(dir, 0755)
        if err != nil {
            return err
        }
    }

    f, err := os.Create(path)
    if err != nil {
        return err
    }

    defer f.Close()

    t, err := template.New("data_source").Funcs(funcMap).Parse(dataSourceTemplate)
    if err != nil {
        return err
    }

    return t.Execute(f, model)
}

func generateResource(path string, model Model) error {
    path = filepath.Join(path, strings.ToLower(model.Package), strings.ToLower(model.Name)+"_resource.go")

    dir := filepath.Dir(path)
    if _, err := os.Stat(dir); os.IsNotExist(err) {
        err = os.MkdirAll(dir, 0755)
        if err != nil {
            return err
        }
    }

    f, err := os.Create(path)
    if err != nil {
        return err
    }

    defer f.Close()

    t, err := template.New("resource").Funcs(funcMap).Parse(resourceTemplate)
    if err != nil {
        return err
    }

    return t.Execute(f, model)
}

var funcMap = template.FuncMap{
    "lower":  strings.ToLower,
    "upper":  strings.ToUpper,
    "tftype": tftype,
    "plural": plural,
    "camel":  camelCase,
    "snake":  snakeCase,
    "title":  titleCase,
    "pascal": pascalCase,
    "kebab":  kebabCase,
    "suffix": strings.HasSuffix,
}

func tftype(s string) string {
    switch s {
    case "string":
        return "String"
    case "int":
        return "Int"
    case "bool":
        return "Bool"
    case "float":
        return "Number"
    case "int64":
        return "Int64"
    case "float64":
        return "Float64"
    default:
        return "String"
    }
}

// plural returns the plural form of a word.
func plural(s string) string {
    if len(s) == 0 {
        return s
    }

    switch s[len(s)-1] {
    case 's', 'x', 'z':
        return s + "es"
    case 'h':
        if len(s) > 1 && s[len(s)-2] == 's' {
            return s + "es"
        }
        return s + "s"
    case 'y':
        if len(s) > 1 && !strings.Contains("aeiou", string(s[len(s)-2])) {
            return s[:len(s)-1] + "ies"
        }
        return s + "s"
    default:
        return s + "s"
    }
}

// camelCase returns the camelCase form of a word.
func camelCase(s string) string {
    if len(s) == 0 {
        return s
    }

    var b strings.Builder
    b.Grow(len(s))

    // First character is always lowercase.
    b.WriteByte(s[0] | ('a' - 'A'))

    for i := 1; i < len(s); i++ {
        if s[i] == '_' {
            // Skip underscores.
            continue
        }

        if s[i-1] == '_' {
            // Capitalize the character after an underscore.
            b.WriteByte(s[i] &^ ('a' - 'A'))
            continue
        }

        // Copy the character as-is.
        b.WriteByte(s[i])
    }

    return b.String()
}

// snakeCase returns the snake_case form of a word.
func snakeCase(s string) string {
    if len(s) == 0 {
        return s
    }

    var b strings.Builder
    b.Grow(len(s) + 5)

    // First character is always lowercase.
    b.WriteByte(s[0] | ('a' - 'A'))

    for i := 1; i < len(s); i++ {
        if s[i] == '_' {
            // Skip underscores.
            continue
        }

        if s[i] >= 'A' && s[i] <= 'Z' {
            // Insert an underscore before capital letters.
            b.WriteByte('_')
            b.WriteByte(s[i] | ('a' - 'A'))
            continue
        }

        // Copy the character as-is.
        b.WriteByte(s[i])
    }

    return b.String()
}

// titleCase returns the TitleCase form of a word.
func titleCase(s string) string {
    if len(s) == 0 {
        return s
    }

    var b strings.Builder
    b.Grow(len(s))

    // First character is always uppercase.
    b.WriteByte(s[0] &^ ('a' - 'A'))

    for i := 1; i < len(s); i++ {
        if s[i] == '_' {
            // Skip underscores.
            continue
        }

        if s[i-1] == '_' {
            // Capitalize the character after an underscore.
            b.WriteByte(s[i] &^ ('a' - 'A'))
            continue
        }

        // Copy the character as-is.
        b.WriteByte(s[i])
    }

    return b.String()
}

// kebabCase returns the kebab-case form of a word.
func kebabCase(s string) string {
    if len(s) == 0 {
        return s
    }

    var b strings.Builder
    b.Grow(len(s) + 5)

    // First character is always lowercase.
    b.WriteByte(s[0] | ('a' - 'A'))

    for i := 1; i < len(s); i++ {
        if s[i] == '_' {
            // Skip underscores.
            continue
        }

        if s[i] >= 'A' && s[i] <= 'Z' {
            // Insert a dash before capital letters.
            b.WriteByte('-')
            b.WriteByte(s[i] | ('a' - 'A'))
            continue
        }

        // Copy the character as-is.
        b.WriteByte(s[i])
    }

    return b.String()
}

// pascalCase returns the PascalCase form of a word.
func pascalCase(s string) string {
    if len(s) == 0 {
        return s
    }

    var b strings.Builder
    b.Grow(len(s))

    // First character is always uppercase.
    b.WriteByte(s[0] &^ ('a' - 'A'))

    for i := 1; i < len(s); i++ {
        if s[i] == '_' {
            // Skip underscores.
            continue
        }

        if s[i-1] == '_' {
            // Capitalize the character after an underscore.
            b.WriteByte(s[i] &^ ('a' - 'A'))
            continue
        }

        // Copy the character as-is.
        b.WriteByte(s[i])
    }

    return b.String()
}
