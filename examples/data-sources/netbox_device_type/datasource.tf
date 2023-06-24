# Gets a Netbox device type by ID
data "netbox_device_type" "this" {
  id = "4"
}

output "description" {
  value = data.netbox_device_type.this.description
}

output "id" {
  value = data.netbox_device_type.this.id
}

output "model" {
  value = data.netbox_device_type.this.model
}

output "part_number" {
  value = data.netbox_device_type.this.part_number
}

output "slug" {
  value = data.netbox_device_type.this.slug
}