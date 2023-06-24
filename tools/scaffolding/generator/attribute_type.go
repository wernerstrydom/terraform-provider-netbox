package generator

import (
    "fmt"

    "gopkg.in/yaml.v3"
)

type AttributeType int

const (
    AttributeTypeString AttributeType = iota
    AttributeTypeInt
    AttributeTypeInt64
    AttributeTypeFloat64
    AttributeTypeBool
)

func (a *AttributeType) String() string {
    switch *a {
    case AttributeTypeString:
        return "string"
    case AttributeTypeInt:
        return "int"
    case AttributeTypeInt64:
        return "int64"
    case AttributeTypeFloat64:
        return "float64"
    case AttributeTypeBool:
        return "bool"
    default:
        panic(fmt.Sprintf("unknown attribute type: %d", a))
    }
}

func (a *AttributeType) MarshalYAML() (interface{}, error) {
    return a.String(), nil
}

func (a *AttributeType) UnmarshalYAML(value *yaml.Node) error {
    switch value.Value {
    case "string":
        *a = AttributeTypeString
    case "int":
        *a = AttributeTypeInt
    case "int64":
        *a = AttributeTypeInt64
    case "float64":
        *a = AttributeTypeFloat64
    case "bool":
        *a = AttributeTypeBool
    default:
        return fmt.Errorf("unknown attribute type: %s", value.Value)
    }
    return nil
}
