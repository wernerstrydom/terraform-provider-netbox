package generator

import "gopkg.in/yaml.v3"

var (
    _ Attribute = (*NameAttribute)(nil)
)

type NameAttribute struct {
    description string
}

func (a *NameAttribute) IsKey() bool {
    return false
}

func (a *NameAttribute) IsNullable() bool {
    return true
}

func (a *NameAttribute) IsRequired() bool {
    return true
}

func (a *NameAttribute) Name() string {
    return "Name"
}

func (a *NameAttribute) Description() string {
    return a.description
}

func (a *NameAttribute) MaxLength() int {
    return 100
}

func (a *NameAttribute) MinLength() int {
    return 1
}

func (a *NameAttribute) Pattern() string {
    return ""
}

func (a *NameAttribute) Value() string {
    return "name1"
}

func (a *NameAttribute) Type() AttributeType {
    return AttributeTypeName
}

func (a *NameAttribute) IsReadOnly() bool {
    return false
}

func (a *NameAttribute) MarshalYAML() (interface{}, error) {
    var data struct {
        Type        AttributeType `yaml:"type"`
        Description string        `yaml:"description,omitempty"`
    }
    data.Type = AttributeTypeName
    data.Description = a.description
    return data, nil
}

func (a *NameAttribute) UnmarshalYAML(value *yaml.Node) error {
    var data struct {
        Description string `yaml:"description,omitempty"`
    }

    if err := value.Decode(&data); err != nil {
        return err
    }
    a.description = data.Description
    return nil
}
