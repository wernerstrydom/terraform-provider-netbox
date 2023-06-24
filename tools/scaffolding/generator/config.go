package generator

import (
    "os"

    "gopkg.in/yaml.v3"
)

type Configuration struct {
    services    []Service `yaml:"services,omitempty"`
    resourceMap map[string]*Resource
}

func (c *Configuration) Services() []Service {
    return c.services
}

func (c *Configuration) Save(path string) error {
    f, err := os.Create(path)
    if err != nil {
        return err
    }
    defer f.Close()

    encoder := yaml.NewEncoder(f)
    encoder.SetIndent(2)
    err = encoder.Encode(c)
    if err != nil {
        return err
    }
    return nil
}

func (c *Configuration) MarshalYAML() (interface{}, error) {
    type data struct {
        Services []Service `yaml:"services,omitempty"`
    }
    return data{
        Services: c.services,
    }, nil
}

func (c *Configuration) UnmarshalYAML(value *yaml.Node) error {
    var data struct {
        Services []Service `yaml:"services,omitempty"`
    }
    err := value.Decode(&data)
    if err != nil {
        return err
    }
    c.services = data.Services
    return nil
}
