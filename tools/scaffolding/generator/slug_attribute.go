package generator

import "gopkg.in/yaml.v3"

var (
    _ Attribute = (*SlugAttribute)(nil)
)

type SlugAttribute struct {
    description string
}

func (a *SlugAttribute) IsKey() bool {
    return false
}

func (a *SlugAttribute) IsNullable() bool {
    return true
}

func (a *SlugAttribute) IsRequired() bool {
    return true
}

func (a *SlugAttribute) MaxLength() int {
    return 100
}

func (a *SlugAttribute) MinLength() int {
    return 1
}

func (a *SlugAttribute) Pattern() string {
    return "^[-a-zA-Z0-9_]+$"
}

func (a *SlugAttribute) Name() string {
    return "Slug"
}

func (a *SlugAttribute) Description() string {
    return a.description
}

func (a *SlugAttribute) Value() string {
    return "name-1"
}

func (a *SlugAttribute) Type() AttributeType {
    return AttributeTypeSlug
}

func (a *SlugAttribute) IsReadOnly() bool {
    return false
}

func (a *SlugAttribute) MarshalYAML() (interface{}, error) {
    var data struct {
        Type        AttributeType `yaml:"type"`
        Description string        `yaml:"description,omitempty"`
    }
    data.Type = AttributeTypeSlug
    data.Description = a.description
    return data, nil
}

func (a *SlugAttribute) UnmarshalYAML(value *yaml.Node) error {
    var data struct {
        Description string `yaml:"description,omitempty"`
    }

    if err := value.Decode(&data); err != nil {
        return err
    }
    a.description = data.Description
    return nil
}
