package generator

type Association struct {
    Name        string `yaml:"name,omitempty"`
    Description string `yaml:"description,omitempty"`
    Type        string `yaml:"type,omitempty"`
    Min         int    `yaml:"min,omitempty"`
    Max         int    `yaml:"max,omitempty"`
    IsNullable  bool   `yaml:"nullable,omitempty"`
}
