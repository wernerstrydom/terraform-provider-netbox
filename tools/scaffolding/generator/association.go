package generator

import "gopkg.in/yaml.v3"

type Association struct {
	Name        string `yaml:"name,omitempty"`
	Description string `yaml:"description,omitempty"`
	Type        string `yaml:"type,omitempty"`
	Min         int    `yaml:"min,omitempty"`
	Max         int    `yaml:"max,omitempty"`
	IsNullable  bool   `yaml:"nullable,omitempty"`
}

func (a *Association) MarshalYAML() (interface{}, error) {
	return c, nil
}

func (a *Association) UnmarshalYAML(value *yaml.Node) error {
	return value.Decode(&c)
}
