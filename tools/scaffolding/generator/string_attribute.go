package generator

import "gopkg.in/yaml.v3"

var _ Attribute = (*StringAttribute)(nil)

type StringAttribute struct {
	name         string
	description  string
	value        string
	isReadOnly   bool
	maxLength    int
	minLength    int
	pattern      string
	isKey        bool
	isNullable   bool
	defaultValue *string
}

func (a *StringAttribute) IsRequired() bool {
	return a.minLength > 0
}

func (a *StringAttribute) Name() string {
	return a.name
}

func (a *StringAttribute) Description() string {
	return a.description
}

func (a *StringAttribute) Value() string {
	return a.value
}

func (a *StringAttribute) Type() AttributeType {
	return AttributeTypeString
}

func (a *StringAttribute) IsReadOnly() bool {
	return a.isReadOnly
}

func (a *StringAttribute) MaxLength() int {
	return a.maxLength
}

func (a *StringAttribute) MinLength() int {
	return a.minLength
}

func (a *StringAttribute) Pattern() string {
	return a.pattern
}

func (a *StringAttribute) IsKey() bool {
	return a.isKey
}

func (a *StringAttribute) IsNullable() bool {
	return a.isNullable
}

func (a *StringAttribute) DefaultValue() any {
	return a.defaultValue
}

func (a *StringAttribute) MarshalYAML() (interface{}, error) {
	var data struct {
		Name          string        `yaml:"name,omitempty"`
		Description   string        `yaml:"description,omitempty"`
		Value         string        `yaml:"value,omitempty"`
		AttributeType AttributeType `yaml:"type"`
		IsReadOnly    bool          `yaml:"readonly,omitempty"`
		MaxLength     int           `yaml:"maxLength,omitempty"`
		MinLength     int           `yaml:"minLength,omitempty"`
		Pattern       string        `yaml:"pattern,omitempty"`
		IsKey         bool          `yaml:"key,omitempty"`
		IsNullable    bool          `yaml:"nullable,omitempty"`
		DefaultValue  *string       `yaml:"default,omitempty"`
	}

	data.Name = a.name
	data.Description = a.description
	data.Value = a.value
	data.AttributeType = AttributeTypeString
	data.IsReadOnly = a.isReadOnly
	data.MaxLength = a.maxLength
	data.MinLength = a.minLength
	data.Pattern = a.pattern
	data.IsKey = a.isKey
	data.IsNullable = a.isNullable
	data.DefaultValue = a.defaultValue

	return data, nil
}

func (a *StringAttribute) UnmarshalYAML(value *yaml.Node) error {
	var data struct {
		Name          string        `yaml:"name,omitempty"`
		Description   string        `yaml:"description,omitempty"`
		Value         string        `yaml:"value,omitempty"`
		AttributeType AttributeType `yaml:"type"`
		IsReadOnly    bool          `yaml:"readonly,omitempty"`
		MaxLength     int           `yaml:"maxLength,omitempty"`
		MinLength     int           `yaml:"minLength,omitempty"`
		Pattern       string        `yaml:"pattern,omitempty"`
		IsKey         bool          `yaml:"key,omitempty"`
		IsNullable    bool          `yaml:"nullable,omitempty"`
		DefaultValue  *string       `yaml:"default,omitempty"`
	}

	if err := value.Decode(&data); err != nil {
		return err
	}

	a.name = data.Name
	a.description = data.Description
	a.value = data.Value

	a.isReadOnly = data.IsReadOnly
	a.maxLength = data.MaxLength
	a.minLength = data.MinLength
	a.pattern = data.Pattern
	a.isKey = data.IsKey
	a.isNullable = data.IsNullable
	a.defaultValue = data.DefaultValue
	return nil
}
