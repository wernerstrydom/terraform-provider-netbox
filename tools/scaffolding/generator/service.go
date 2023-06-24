package generator

import (
	"gopkg.in/yaml.v3"

	"terraform-provider-netbox/tools/ptr"
)

type Service struct {
	Name        string     `yaml:"name,omitempty"`
	Description string     `yaml:"description,omitempty"`
	Resources   []Resource `yaml:"resources,omitempty"`
}

func (c *Service) MarshalYAML() (interface{}, error) {
	var data struct {
		Name        *string    `yaml:"name,omitempty"`
		Description *string    `yaml:"description,omitempty"`
		Resources   []Resource `yaml:"resources,omitempty"`
	}
	if c.Name != "" {
		data.Name = ptr.String(c.Name)
	}
	if c.Description != "" {
		data.Description = ptr.String(c.Description)
	}
	if len(c.Resources) > 0 {
		data.Resources = c.Resources
	}
	return data, nil
}

func (c *Service) UnmarshalYAML(value *yaml.Node) error {
	var data struct {
		Name        *string    `yaml:"name,omitempty"`
		Description *string    `yaml:"description,omitempty"`
		Resources   []Resource `yaml:"resources,omitempty"`
	}
	err := value.Decode(&data)
	if err != nil {
		return err
	}
	if data.Name != nil {
		c.Name = *data.Name
	}
	if data.Description != nil {
		c.Description = *data.Description
	}
	if data.Resources != nil {
		c.Resources = data.Resources
	}
	return nil
}
