package generator

import (
    "gopkg.in/yaml.v3"

    "terraform-provider-netbox/tools/ptr"
)

type Resource struct {
    Name           string        `yaml:"name,omitempty"`
    Plural         string        `yaml:"plural,omitempty"`
    Description    string        `yaml:"description,omitempty"`
    Attributes     []Attribute   `yaml:"attributes,omitempty"`
    Associations   []Association `yaml:"associations,omitempty"`
    WriteableModel string        `yaml:"writeableModel,omitempty"`
    ReadableModel  string        `yaml:"readableModel,omitempty"`
}

func (c *Resource) MarshalYAML() (interface{}, error) {
    var data struct {
        Name           *string       `yaml:"name,omitempty"`
        Plural         *string       `yaml:"plural,omitempty"`
        Description    *string       `yaml:"description,omitempty"`
        Attributes     []Attribute   `yaml:"attributes,omitempty"`
        Associations   []Association `yaml:"associations,omitempty"`
        WriteableModel *string       `yaml:"writeableModel,omitempty"`
        ReadableModel  *string       `yaml:"readableModel,omitempty"`
    }
    if c.Name != "" {
        data.Name = ptr.String(c.Name)
    }
    if c.Plural != "" {
        data.Plural = ptr.String(c.Plural)
    }
    if c.Description != "" {
        data.Description = ptr.String(c.Description)
    }
    if len(c.Attributes) > 0 {
        data.Attributes = c.Attributes
    }
    if len(c.Associations) > 0 {
        data.Associations = c.Associations
    }
    if c.WriteableModel != "" {
        data.WriteableModel = ptr.String(c.WriteableModel)
    }
    if c.ReadableModel != "" {
        data.ReadableModel = ptr.String(c.ReadableModel)
    }
    return data, nil
}

func (c *Resource) UnmarshalYAML(value *yaml.Node) error {
    var data struct {
        Name           *string       `yaml:"name,omitempty"`
        Plural         *string       `yaml:"plural,omitempty"`
        Description    *string       `yaml:"description,omitempty"`
        Attributes     []Attribute   `yaml:"attributes,omitempty"`
        Associations   []Association `yaml:"associations,omitempty"`
        WriteableModel *string       `yaml:"writeableModel,omitempty"`
        ReadableModel  *string       `yaml:"readableModel,omitempty"`
    }
    err := value.Decode(&data)
    if err != nil {
        return err
    }
    if data.Name != nil {
        c.Name = *data.Name
    }
    if data.Plural != nil {
        c.Plural = *data.Plural
    }
    if data.Description != nil {
        c.Description = *data.Description
    }
    if data.Attributes != nil {
        c.Attributes = data.Attributes
    }
    if data.Associations != nil {
        c.Associations = data.Associations
    }
    if data.WriteableModel != nil {
        c.WriteableModel = *data.WriteableModel
    }
    if data.ReadableModel != nil {
        c.ReadableModel = *data.ReadableModel
    }
    return nil
}
