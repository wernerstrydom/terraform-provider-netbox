{{$resource := (snakeCase .Resource.Name) -}}
# Gets a Netbox {{ .Resource.Name }} by ID
data "netbox_{{ $resource }}" "this" {
  id = "4"
}
{{- range $name, $attribute := .Resource.Attributes }}

output "{{ snakeCase $attribute.Name }}" {
  value = data.netbox_{{ $resource }}.this.{{ snakeCase $attribute.Name }}
}
{{- end }}