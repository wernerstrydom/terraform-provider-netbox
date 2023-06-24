package generator

import (
    "gopkg.in/yaml.v3"

    "terraform-provider-netbox/tools/ptr"
)

type Attribute struct {
    Name         string        `yaml:"name,omitempty"`
    Description  string        `yaml:"description,omitempty"`
    Value        string        `yaml:"value,omitempty"`
    Type         AttributeType `yaml:"type"`
    ReadOnly     bool          `yaml:"readonly,omitempty"`
    MaxLength    int           `yaml:"maxLength,omitempty"`
    MinLength    int           `yaml:"minLength,omitempty"`
    Pattern      string        `yaml:"pattern,omitempty"`
    IsKey        bool          `yaml:"key,omitempty"`
    IsNullable   bool          `yaml:"nullable,omitempty"`
    DefaultValue any           `yaml:"default,omitempty"`
}

func (a *Attribute) IsRequired() bool {
    return !a.ReadOnly && !a.IsKey && a.MinLength > 0
}

func (a *Attribute) MarshalYAML() (interface{}, error) {
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
    if a.Name != "" {
        data.Name = ptr.String(a.Name)
    }
    if a.Description != "" {
        data.Description = ptr.String(a.Description)
    }
    if a.Value != "" {
        data.Value = ptr.String(a.Value)
    }
    data.Type = a.Type
    if a.ReadOnly {
        data.ReadOnly = ptr.Bool(a.ReadOnly)
    }
    if a.MaxLength > 0 {
        data.MaxLength = ptr.Int(a.MaxLength)
    }
    if a.MinLength > 0 {
        data.MinLength = ptr.Int(a.MinLength)
    }
    if a.Pattern != "" {
        data.Pattern = ptr.String(a.Pattern)
    }
    if a.IsKey {
        data.IsKey = ptr.Bool(a.IsKey)
    }
    if a.IsNullable {
        data.IsNullable = ptr.Bool(a.IsNullable)
    }
    if a.DefaultValue != nil {
        data.DefaultValue = a.DefaultValue
    }
    return data, nil

}

func (a *Attribute) UnmarshalYAML(value *yaml.Node) error {
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
        a.Name = *data.Name
    }
    if data.Description != nil {
        a.Description = *data.Description
    }
    if data.Value != nil {
        a.Value = *data.Value
    }
    a.Type = data.Type
    if data.ReadOnly != nil {
        a.ReadOnly = *data.ReadOnly
    }
    if data.MaxLength != nil {
        a.MaxLength = *data.MaxLength
    }
    if data.MinLength != nil {
        a.MinLength = *data.MinLength
    }
    if data.Pattern != nil {
        a.Pattern = *data.Pattern
    }
    if data.IsKey != nil {
        a.IsKey = *data.IsKey
    }
    if data.IsNullable != nil {
        a.IsNullable = *data.IsNullable
    }
    a.DefaultValue = data.DefaultValue

    return nil
}
