package generator

import (
    "fmt"
    "strings"
    "text/template"

    "github.com/iancoleman/strcase"
)

var funcMap = template.FuncMap{
    "lower":      strings.ToLower,
    "upper":      strings.ToUpper,
    "title":      func(s string) string { return strings.Title(strcase.ToDelimited(s, ' ')) },
    "pascalCase": strcase.ToCamel,
    "camelCase":  strcase.ToLowerCamel,
    "snakeCase":  strcase.ToSnake,
    "kebabCase":  strcase.ToKebab,
    "delimited":  strcase.ToDelimited,
    "type": func(a Attribute) string {
        switch a.Type() {
        case AttributeTypeString:
            return "String"
        case AttributeTypeInt:
            return "Int"
        case AttributeTypeInt64:
            return "Int64"
        case AttributeTypeFloat64:
            return "Float64"
        case AttributeTypeBool:
            return "Bool"
        case AttributeTypeId:
            return "String"
        case AttributeTypeName:
            return "String"
        case AttributeTypeSlug:
            return "String"
        case AttributeTypeDescription:
            return "String"
        default:
            panic(fmt.Sprintf("unknown attribute type: %d", a.Type()))
        }
    },
}
