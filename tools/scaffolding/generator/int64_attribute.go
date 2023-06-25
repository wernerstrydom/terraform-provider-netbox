package generator

import (
    "gopkg.in/yaml.v3"
)

var _ Attribute = (*Int64Attribute)(nil)

type Int64Attribute struct {
    name         string
    description  string
    value        int64
    isReadOnly   bool
    isKey        bool
    isNullable   bool
    defaultValue *int64
    minValue     *int64
    maxValue     *int64
}

func (a *Int64Attribute) IsRequired() bool {
    return false
}

func (a *Int64Attribute) Name() string {
    return a.name
}

func (a *Int64Attribute) Description() string {
    return a.description
}

func (a *Int64Attribute) Value() int64 {
    return a.value
}

func (a *Int64Attribute) Type() AttributeType {
    return AttributeTypeInt64
}

func (a *Int64Attribute) IsReadOnly() bool {
    return a.isReadOnly
}

func (a *Int64Attribute) IsKey() bool {
    return a.isKey
}

func (a *Int64Attribute) IsNullable() bool {
    return a.isNullable
}

func (a *Int64Attribute) DefaultValue() any {
    return a.defaultValue
}

func (a *Int64Attribute) MinValue() *int64 {
    return a.minValue
}

func (a *Int64Attribute) MaxValue() *int64 {
    return a.maxValue
}

func (a *Int64Attribute) MarshalYAML() (interface{}, error) {
    var data struct {
        Name          string        `yaml:"name,omitempty"`
        Description   string        `yaml:"description,omitempty"`
        Value         int64         `yaml:"value,omitempty"`
        AttributeType AttributeType `yaml:"type"`
        IsReadOnly    bool          `yaml:"readonly,omitempty"`
        IsKey         bool          `yaml:"key,omitempty"`
        IsNullable    bool          `yaml:"nullable,omitempty"`
        DefaultValue  *int64        `yaml:"default,omitempty"`
    }

    data.Name = a.name
    data.Description = a.description
    data.Value = a.value
    data.AttributeType = AttributeTypeInt64
    data.IsReadOnly = a.isReadOnly
    data.IsKey = a.isKey
    data.IsNullable = a.isNullable
    data.DefaultValue = a.defaultValue

    return data, nil
}

func (a *Int64Attribute) UnmarshalYAML(value *yaml.Node) error {
    var data struct {
        Name          string        `yaml:"name,omitempty"`
        Description   string        `yaml:"description,omitempty"`
        Value         int64         `yaml:"value,omitempty"`
        AttributeType AttributeType `yaml:"type"`
        IsReadOnly    bool          `yaml:"readonly,omitempty"`
        IsKey         bool          `yaml:"key,omitempty"`
        IsNullable    bool          `yaml:"nullable,omitempty"`
        DefaultValue  *int64        `yaml:"default,omitempty"`
    }

    if err := value.Decode(&data); err != nil {
        return err
    }

    a.name = data.Name
    a.description = data.Description
    a.value = data.Value
    a.isReadOnly = data.IsReadOnly
    a.isKey = data.IsKey
    a.isNullable = data.IsNullable
    a.defaultValue = data.DefaultValue
    return nil
}
