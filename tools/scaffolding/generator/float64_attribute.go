package generator

import "gopkg.in/yaml.v3"

var _ Attribute = (*Float64Attribute)(nil)

type Float64Attribute struct {
	name         string
	description  string
	value        float64
	isReadOnly   bool
	isKey        bool
	isNullable   bool
	defaultValue *float64
}

func (a *Float64Attribute) IsRequired() bool {
	return false
}

func (a *Float64Attribute) Name() string {
	return a.name
}

func (a *Float64Attribute) Description() string {
	return a.description
}

func (a *Float64Attribute) Value() float64 {
	return a.value
}

func (a *Float64Attribute) Type() AttributeType {
	return AttributeTypeFloat64
}

func (a *Float64Attribute) IsReadOnly() bool {
	return a.isReadOnly
}

func (a *Float64Attribute) IsKey() bool {
	return a.isKey
}

func (a *Float64Attribute) IsNullable() bool {
	return a.isNullable
}

func (a *Float64Attribute) DefaultValue() any {
	return a.defaultValue
}

func (a *Float64Attribute) MarshalYAML() (interface{}, error) {
	var data struct {
		Name          string        `yaml:"name,omitempty"`
		Description   string        `yaml:"description,omitempty"`
		Value         float64       `yaml:"value,omitempty"`
		AttributeType AttributeType `yaml:"type"`
		IsReadOnly    bool          `yaml:"readonly,omitempty"`
		IsKey         bool          `yaml:"key,omitempty"`
		IsNullable    bool          `yaml:"nullable,omitempty"`
		DefaultValue  *float64      `yaml:"default,omitempty"`
	}

	data.Name = a.name
	data.Description = a.description
	data.Value = a.value
	data.AttributeType = AttributeTypeFloat64
	data.IsReadOnly = a.isReadOnly
	data.IsKey = a.isKey
	data.IsNullable = a.isNullable
	data.DefaultValue = a.defaultValue

	return data, nil
}

func (a *Float64Attribute) UnmarshalYAML(value *yaml.Node) error {
	var data struct {
		Name          string        `yaml:"name,omitempty"`
		Description   string        `yaml:"description,omitempty"`
		Value         float64       `yaml:"value,omitempty"`
		AttributeType AttributeType `yaml:"type"`
		IsReadOnly    bool          `yaml:"readonly,omitempty"`
		IsKey         bool          `yaml:"key,omitempty"`
		IsNullable    bool          `yaml:"nullable,omitempty"`
		DefaultValue  *float64      `yaml:"default,omitempty"`
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
