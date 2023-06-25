package generator

import (
    "fmt"
    "strings"
    "text/template"

    "github.com/iancoleman/strcase"
)

var funcMap = template.FuncMap{
    "lower":          strings.ToLower,
    "upper":          strings.ToUpper,
    "title":          func(s string) string { return strings.Title(strcase.ToDelimited(s, ' ')) },
    "pascalCase":     strcase.ToCamel,
    "camelCase":      strcase.ToLowerCamel,
    "snakeCase":      strcase.ToSnake,
    "kebabCase":      strcase.ToKebab,
    "delimited":      strcase.ToDelimited,
    "escape":         escape,
    "type":           attributeType,
    "resourceSchema": resourceSchema,
}

func escape(s string) string {
    return "`" + s + "`"
}

func attributeType(a Attribute) string {
    switch a.Type() {
    case AttributeTypeString:
        return "String"
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
}

func resourceSchema(a Attribute) (string, error) {
    var tmpl string

    // TODO Default
    // TODO MarkdownDescription

    switch a.Type() {
    case AttributeTypeString, AttributeTypeName, AttributeTypeSlug, AttributeTypeDescription:
        tmpl = `schema.StringAttribute{
				{{ if .IsRequired }}Required:{{else}}Optional:{{end}}true,
				Description: "{{ .Description }}",
                Default: nil,
                MarkdownDescription: "{{ .Description }}",
                Sensitive: false,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
                Validators: []validator.String{
                    {{ if and (gt .MinLength 0) (gt .MaxLength 0) }}stringvalidator.LengthBetween({{ .MinLength }}, {{ .MaxLength }}),
                    {{end -}}
					{{ if and (gt .MinLength 0) (le .MaxLength 0) }}stringvalidator.LengthAtLeast({{ .MinLength }}),
                    {{ end -}}
                    {{ if and (le .MinLength 0) (gt .MaxLength 0) }}stringvalidator.LengthAtMost({{ .MaxLength }}),
                    {{ end -}}
                    {{ if .Pattern }}stringvalidator.RegexMatches(regexp.MustCompile({{ escape .Pattern }}), "???"),
                    {{ end -}}					
				},
			},`

    case AttributeTypeInt64:
        tmpl = `schema.Int64Attribute{
				{{ if .IsRequired }}Required:{{else}}Optional:{{end}}true,
				Description: "{{ .Description }}",
                Default: nil,
                MarkdownDescription: "{{ .Description }}",
                Sensitive: false,
				PlanModifiers: []planmodifier.Int64{
					int64planmodifier.UseStateForUnknown(),
				},
			},`
    case AttributeTypeFloat64:
        tmpl = `schema.Float64Attribute{
				{{ if .IsRequired }}Required:{{else}}Optional:{{end}}true,
				Description: "{{ .Description }}",
                Default: nil,
                MarkdownDescription: "{{ .Description }}",
                Sensitive: false,
				PlanModifiers: []planmodifier.Float64{
					float64planmodifier.UseStateForUnknown(),
				},
                Validators: []validator.Float64{
                    {{ if and (.MinValue) (.MaxValue) }}float64validator.Between({{ .MinValue }}, {{ .MaxValue }}),
                    {{end -}}
					{{ if and (.MinValue) (not .MaxValue) }}float64validator.AtLeast({{ .MinValue }}),
                    {{ end -}}
                    {{ if and (not .MinValue) (.MaxValue) }}float64validator.AtMost({{ .MaxValue }}),                    
                    {{ end -}}	
				},
			},`
    case AttributeTypeBool:
        tmpl = `schema.BoolAttribute{
				{{ if .IsRequired }}Required:{{else}}Optional:{{end}}true,
				Description: "{{ .Description }}",
                Default: nil,
                MarkdownDescription: "{{ .Description }}",
                Sensitive: false,
				PlanModifiers: []planmodifier.Bool{
					boolplanmodifier.UseStateForUnknown(),
				},
			},`
    case AttributeTypeId:
        tmpl = `schema.StringAttribute{
				Computed:    true,
				Optional:    true,
				Description: "{{ .Description }}",
                Default: nil,
                MarkdownDescription: "{{ .Description }}",
                Sensitive: false,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},

			},`

    default:
        panic(fmt.Sprintf("unknown attribute type: %d", a.Type()))
    }

    t, err := template.New("resourceSchema").Funcs(template.FuncMap{"escape": escape}).Parse(tmpl)
    if err != nil {
        return "", err
    }

    var b strings.Builder
    err = t.Execute(&b, a)
    if err != nil {
        return "", err
    }
    return b.String(), nil
}
