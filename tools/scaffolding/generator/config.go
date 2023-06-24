package generator

import (
    "os"

    "gopkg.in/yaml.v3"
)

type Configuration struct {
    Services    map[string]Service `yaml:"services,omitempty"`
    resourceMap map[string]*Resource
}

func Save(c Configuration) error {
    f, err := os.Create("config.yaml")
    if err != nil {
        return err
    }
    defer f.Close()

    err = yaml.NewEncoder(f).Encode(c)
    if err != nil {
        return err
    }
    return nil
}
