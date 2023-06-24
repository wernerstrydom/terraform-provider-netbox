{{$resource := (snakeCase .Resource.Plural ) -}}
# Gets all the Netbox {{ .Resource.Plural }}
data "netbox_{{ $resource }}" "this" {
}

output "{{ snakeCase .Resource.Plural }}" {
  value = data.netbox_{{ $resource }}.this.ids
}
