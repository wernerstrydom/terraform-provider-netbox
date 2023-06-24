package generator

import "gopkg.in/yaml.v3"

var (
    _ Attribute = (*IdAttribute)(nil)
)

type IdAttribute struct {
    description string
}

func (a *IdAttribute) IsKey() bool {
    return true
}

func (a *IdAttribute) IsNullable() bool {
    return true
}

func (a *IdAttribute) IsRequired() bool {
    return false
}

func (a *IdAttribute) Name() string {
    return "ID"
}

func (a *IdAttribute) Description() string {
    return a.description
}

func (a *IdAttribute) Value() string {
    return ""
}

func (a *IdAttribute) Type() AttributeType {
    return AttributeTypeId
}

func (a *IdAttribute) IsReadOnly() bool {
    return true
}

func (a *IdAttribute) MarshalYAML() (interface{}, error) {
    var data struct {
        Description string `yaml:"description,omitempty"`
    }
    data.Description = a.description
    return data, nil
}

func (a *IdAttribute) UnmarshalYAML(value *yaml.Node) error {
    var data struct {
        Description string `yaml:"description,omitempty"`
    }

    if err := value.Decode(&data); err != nil {
        return err
    }
    a.description = data.Description
    return nil
}
