package generator

import (
    "fmt"
)

type AttributeType int

const (
    AttributeTypeString AttributeType = iota
    AttributeTypeInt
    AttributeTypeInt64
    AttributeTypeFloat64
    AttributeTypeBool
)

var AttributeTypes = []AttributeType{
    AttributeTypeString,
    AttributeTypeInt,
    AttributeTypeInt64,
    AttributeTypeFloat64,
    AttributeTypeBool,
}

var AttributeTypeMap = map[string]AttributeType{
    "string":  AttributeTypeString,
    "int":     AttributeTypeInt,
    "int64":   AttributeTypeInt64,
    "float64": AttributeTypeFloat64,
    "bool":    AttributeTypeBool,
}

var AttributeTypeStringMap = map[AttributeType]string{
    AttributeTypeString:  "string",
    AttributeTypeInt:     "int",
    AttributeTypeInt64:   "int64",
    AttributeTypeFloat64: "float64",
    AttributeTypeBool:    "bool",
}

func ParseAttributeType(s string) (AttributeType, error) {
    t, ok := AttributeTypeMap[s]
    if !ok {
        return 0, fmt.Errorf("unknown attribute type: %s", s)
    }
    return t, nil
}

func (a AttributeType) String() string {
    s, ok := AttributeTypeStringMap[a]
    if !ok {
        return ""
    }
    return s
}

func (e AttributeType) MarshalText() ([]byte, error) {
    return []byte(e.String()), nil
}

func (e *AttributeType) UnmarshalText(text []byte) (err error) {
    *e, err = ParseAttributeType(string(text))
    return
}
