package generator

import (
    "gopkg.in/yaml.v3"

    "terraform-provider-netbox/tools/ptr"
)

type Attribute interface {
    Name() string
    Description() string
    Value() string
    Type() AttributeType
    IsReadOnly() bool
    MaxLength() int
    MinLength() int
    Pattern() string
    IsKey() bool
    IsNullable() bool
    DefaultValue() any
    IsRequired() bool
}

var (
    _ Attribute = (*attribute)(nil)
)

type attribute struct {
    name          string        `yaml:"name,omitempty"`
    description   string        `yaml:"description,omitempty"`
    value         string        `yaml:"value,omitempty"`
    attributeType AttributeType `yaml:"type"`
    isReadOnly    bool          `yaml:"readonly,omitempty"`
    maxLength     int           `yaml:"maxLength,omitempty"`
    minLength     int           `yaml:"minLength,omitempty"`
    pattern       string        `yaml:"pattern,omitempty"`
    isKey         bool          `yaml:"key,omitempty"`
    isNullable    bool          `yaml:"nullable,omitempty"`
    defaultValue  any           `yaml:"default,omitempty"`
}

func (a *attribute) Name() string {
    return a.name
}

func (a *attribute) Description() string {
    return a.description
}

func (a *attribute) Value() string {
    return a.value
}

func (a *attribute) Type() AttributeType {
    return a.attributeType
}

func (a *attribute) IsReadOnly() bool {
    return a.isReadOnly
}

func (a *attribute) MaxLength() int {
    return a.maxLength
}

func (a *attribute) MinLength() int {
    return a.minLength
}

func (a *attribute) Pattern() string {
    return a.pattern
}

func (a *attribute) IsKey() bool {
    return a.isKey
}

func (a *attribute) IsNullable() bool {
    return a.isNullable
}

func (a *attribute) DefaultValue() any {
    return a.defaultValue
}

func (a *attribute) IsRequired() bool {
    return !a.isReadOnly && !a.isKey && a.minLength > 0
}

func (a *attribute) MarshalYAML() (interface{}, error) {
    var data struct {
        Name         *string       `yaml:"name,omitempty"`
        Description  *string       `yaml:"description,omitempty"`
        Value        *string       `yaml:"value,omitempty"`
        Type         AttributeType `yaml:"type"`
        ReadOnly     *bool         `yaml:"readonly,omitempty"`
        MaxLength    *int          `yaml:"maxLength,omitempty"`
        MinLength    *int          `yaml:"minLength,omitempty"`
        Pattern      *string       `yaml:"pattern,omitempty"`
        IsKey        *bool         `yaml:"key,omitempty"`
        IsNullable   *bool         `yaml:"nullable,omitempty"`
        DefaultValue any           `yaml:"default,omitempty"`
    }
    if a.name != "" {
        data.Name = ptr.String(a.name)
    }
    if a.description != "" {
        data.Description = ptr.String(a.description)
    }
    if a.value != "" {
        data.Value = ptr.String(a.value)
    }
    data.Type = a.attributeType
    if a.isReadOnly {
        data.ReadOnly = ptr.Bool(a.isReadOnly)
    }
    if a.maxLength > 0 {
        data.MaxLength = ptr.Int(a.maxLength)
    }
    if a.minLength > 0 {
        data.MinLength = ptr.Int(a.minLength)
    }
    if a.pattern != "" {
        data.Pattern = ptr.String(a.pattern)
    }
    if a.isKey {
        data.IsKey = ptr.Bool(a.isKey)
    }
    if a.isNullable {
        data.IsNullable = ptr.Bool(a.isNullable)
    }
    if a.defaultValue != nil {
        data.DefaultValue = a.defaultValue
    }
    return data, nil

}

func (a *attribute) UnmarshalYAML(value *yaml.Node) error {
    var data struct {
        Name         *string       `yaml:"name,omitempty"`
        Description  *string       `yaml:"description,omitempty"`
        Value        *string       `yaml:"value,omitempty"`
        Type         AttributeType `yaml:"type"`
        ReadOnly     *bool         `yaml:"readonly,omitempty"`
        MaxLength    *int          `yaml:"maxLength,omitempty"`
        MinLength    *int          `yaml:"minLength,omitempty"`
        Pattern      *string       `yaml:"pattern,omitempty"`
        IsKey        *bool         `yaml:"key,omitempty"`
        IsNullable   *bool         `yaml:"nullable,omitempty"`
        DefaultValue any           `yaml:"default,omitempty"`
    }
    err := value.Decode(&data)
    if err != nil {
        return err
    }

    if data.Name != nil {
        a.name = *data.Name
    }
    if data.Description != nil {
        a.description = *data.Description
    }
    if data.Value != nil {
        a.value = *data.Value
    }
    a.attributeType = data.Type
    if data.ReadOnly != nil {
        a.isReadOnly = *data.ReadOnly
    }
    if data.MaxLength != nil {
        a.maxLength = *data.MaxLength
    }
    if data.MinLength != nil {
        a.minLength = *data.MinLength
    }
    if data.Pattern != nil {
        a.pattern = *data.Pattern
    }
    if data.IsKey != nil {
        a.isKey = *data.IsKey
    }
    if data.IsNullable != nil {
        a.isNullable = *data.IsNullable
    }
    a.defaultValue = data.DefaultValue

    return nil
}
