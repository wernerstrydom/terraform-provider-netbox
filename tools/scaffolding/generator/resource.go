package generator

type Resource struct {
    Name           string                  `yaml:"name,omitempty"`
    Plural         string                  `yaml:"plural,omitempty"`
    Description    string                  `yaml:"description,omitempty"`
    Attributes     map[string]*Attribute   `yaml:"attributes,omitempty"`
    Associations   map[string]*Association `yaml:"associations,omitempty"`
    WriteableModel string                  `yaml:"writeableModel,omitempty"`
    ReadableModel  string                  `yaml:"readableModel,omitempty"`
}
