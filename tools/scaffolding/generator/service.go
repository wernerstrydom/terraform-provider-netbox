package generator

type Service struct {
    Name        string               `yaml:"name,omitempty"`
    Description string               `yaml:"description,omitempty"`
    Resources   map[string]*Resource `yaml:"resources,omitempty"`
}
