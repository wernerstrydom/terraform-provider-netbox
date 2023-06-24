package generator

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

func (a Attribute) IsRequired() bool {
    return !a.ReadOnly && !a.IsKey && a.MinLength > 0
}
