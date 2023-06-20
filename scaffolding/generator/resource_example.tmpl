{{$resource := (snakeCase .Resource.Name) -}}
resource "netbox_{{ $resource }}" "this" {
{{- range $name, $attribute := .Resource.Attributes }}{{ if $attribute.IsRequired }}
    {{ snakeCase $attribute.Name }} = "{{ $attribute.Value }}"{{ end }}{{ end }}
}
{{ range $name, $attribute := .Resource.Attributes }}

output "{{ snakeCase $attribute.Name }}" {
    value = netbox_{{ $resource }}.this.{{ snakeCase $attribute.Name }}
}
{{ end }}