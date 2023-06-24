package generator

import "gopkg.in/yaml.v3"

var _ Attribute = (*BoolAttribute)(nil)

type BoolAttribute struct {
    name         string
    description  string
    value        bool
    isReadOnly   bool
    isNullable   bool
    defaultValue *bool
}

func (a *BoolAttribute) IsRequired() bool {
    return a.defaultValue == nil
}

func (a *BoolAttribute) Name() string {
    return a.name
}

func (a *BoolAttribute) Description() string {
    return a.description
}

func (a *BoolAttribute) Value() bool {
    return a.value
}

func (a *BoolAttribute) Type() AttributeType {
    return AttributeTypeBool
}

func (a *BoolAttribute) IsReadOnly() bool {
    return a.isReadOnly
}

func (a *BoolAttribute) IsKey() bool {
    return false
}

func (a *BoolAttribute) IsNullable() bool {
    return a.isNullable
}

func (a *BoolAttribute) DefaultValue() any {
    return a.defaultValue
}

func (a *BoolAttribute) MarshalYAML() (interface{}, error) {
    var data struct {
        Name          string        `yaml:"name,omitempty"`
        Description   string        `yaml:"description,omitempty"`
        Value         bool          `yaml:"value,omitempty"`
        AttributeType AttributeType `yaml:"type"`
        IsReadOnly    bool          `yaml:"readonly,omitempty"`
        IsNullable    bool          `yaml:"nullable,omitempty"`
        DefaultValue  *bool         `yaml:"default,omitempty"`
    }

    data.Name = a.name
    data.Description = a.description
    data.Value = a.value
    data.AttributeType = AttributeTypeBool
    data.IsReadOnly = a.isReadOnly
    data.IsNullable = a.isNullable
    data.DefaultValue = a.defaultValue

    return data, nil
}

func (a *BoolAttribute) UnmarshalYAML(value *yaml.Node) error {
    var data struct {
        Name          string        `yaml:"name,omitempty"`
        Description   string        `yaml:"description,omitempty"`
        Value         bool          `yaml:"value,omitempty"`
        AttributeType AttributeType `yaml:"type"`
        IsReadOnly    bool          `yaml:"readonly,omitempty"`
        IsNullable    bool          `yaml:"nullable,omitempty"`
        DefaultValue  *bool         `yaml:"default,omitempty"`
    }

    if err := value.Decode(&data); err != nil {
        return err
    }

    a.name = data.Name
    a.description = data.Description
    a.value = data.Value
    a.isReadOnly = data.IsReadOnly
    a.isNullable = data.IsNullable
    a.defaultValue = data.DefaultValue
    return nil
}
