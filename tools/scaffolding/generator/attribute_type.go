package generator

import (
    "fmt"
)

type AttributeType int

const (
    AttributeTypeString AttributeType = iota
    AttributeTypeInt64
    AttributeTypeFloat64
    AttributeTypeBool
    AttributeTypeId
    AttributeTypeName
    AttributeTypeSlug
    AttributeTypeDescription
)

var AttributeTypes = []AttributeType{
    AttributeTypeString,
    AttributeTypeInt64,
    AttributeTypeFloat64,
    AttributeTypeBool,
    AttributeTypeId,
    AttributeTypeName,
    AttributeTypeSlug,
    AttributeTypeDescription,
}

var AttributeTypeMap = map[string]AttributeType{
    "string":      AttributeTypeString,
    "int64":       AttributeTypeInt64,
    "float64":     AttributeTypeFloat64,
    "bool":        AttributeTypeBool,
    "id":          AttributeTypeId,
    "name":        AttributeTypeName,
    "slug":        AttributeTypeSlug,
    "description": AttributeTypeDescription,
}

var AttributeTypeStringMap = map[AttributeType]string{
    AttributeTypeString:      "string",
    AttributeTypeInt64:       "int64",
    AttributeTypeFloat64:     "float64",
    AttributeTypeBool:        "bool",
    AttributeTypeId:          "id",
    AttributeTypeName:        "name",
    AttributeTypeSlug:        "slug",
    AttributeTypeDescription: "description",
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
