package generator

import (
    "fmt"

    "gopkg.in/yaml.v3"
)

type AttributeList []Attribute

func (l *AttributeList) Len() int {
    return len(*l)
}

func (l *AttributeList) Less(i, j int) bool {
    return (*l)[i].Name() < (*l)[j].Name()
}

func (l *AttributeList) Swap(i, j int) {
    (*l)[i], (*l)[j] = (*l)[j], (*l)[i]
}

func (l *AttributeList) UnmarshalYAML(value *yaml.Node) error {

    // value should be a sequence
    if value.Kind != yaml.SequenceNode {
        return nil
    }

    sequence := value.Content
    if sequence == nil {
        return nil
    }

    *l = make(AttributeList, len(sequence))
    for i, v := range sequence {

        var data struct {
            Type AttributeType `yaml:"type"`
        }

        if err := v.Decode(&data); err != nil {
            return err
        }
        var a Attribute
        switch data.Type {
        case AttributeTypeString:
            var c attribute
            if err := v.Decode(&c); err != nil {
                return err
            }
            a = &c
        case AttributeTypeInt64:
            var c attribute
            if err := v.Decode(&c); err != nil {
                return err
            }
            a = &c
        case AttributeTypeFloat64:
            var c attribute
            if err := v.Decode(&c); err != nil {
                return err
            }
            a = &c
        case AttributeTypeBool:
            var c attribute
            if err := v.Decode(&c); err != nil {
                return err
            }
            a = &c
        default:
            return fmt.Errorf("unknown attribute type %q", data.Type)
        }

        (*l)[i] = a
    }
    return nil
}

func (l *AttributeList) MarshalYAML() (interface{}, error) {
    var data []*attribute
    for _, v := range *l {
        data = append(data, v.(*attribute))
    }
    return data, nil
}

func (l *AttributeList) String() string {
    // serialize l to yaml and return the string
    data, err := yaml.Marshal(l)
    if err != nil {
        panic(err)
    }
    return string(data)
}
