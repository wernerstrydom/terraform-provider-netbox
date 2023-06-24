package generator

import "gopkg.in/yaml.v3"

var (
    _ Attribute = (*DescriptionAttribute)(nil)
)

type DescriptionAttribute struct {
    description string
}

func (a *DescriptionAttribute) IsKey() bool {
    return false
}

func (a *DescriptionAttribute) IsNullable() bool {
    return false
}

func (a *DescriptionAttribute) IsRequired() bool {
    return false
}

func (a *DescriptionAttribute) Name() string {
    return "Description"
}

func (a *DescriptionAttribute) Description() string {
    return a.description
}

func (a *DescriptionAttribute) Value() string {
    return "description-1"
}

func (a *DescriptionAttribute) Type() AttributeType {
    return AttributeTypeDescription
}

func (a *DescriptionAttribute) IsReadOnly() bool {
    return false
}

func (a *DescriptionAttribute) MarshalYAML() (interface{}, error) {
    var data struct {
        Type        AttributeType `yaml:"type"`
        Description string        `yaml:"description,omitempty"`
    }
    data.Type = a.Type()
    data.Description = a.description
    return data, nil
}

func (a *DescriptionAttribute) UnmarshalYAML(value *yaml.Node) error {
    var data struct {
        Description string `yaml:"description,omitempty"`
    }

    if err := value.Decode(&data); err != nil {
        return err
    }
    a.description = data.Description
    return nil
}
