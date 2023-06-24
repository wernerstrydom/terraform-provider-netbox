resource "netbox_device_type" "this" {
  model         = "Test Device Type"
  slug          = "name-1"
  is_full_depth = "false"
}


output "id" {
  value = netbox_device_type.this.id
}


output "model" {
  value = netbox_device_type.this.model
}


output "part_number" {
  value = netbox_device_type.this.part_number
}


output "slug" {
  value = netbox_device_type.this.slug
}


output "description" {
  value = netbox_device_type.this.description
}


output "u_height" {
  value = netbox_device_type.this.u_height
}


output "weight" {
  value = netbox_device_type.this.weight
}


output "is_full_depth" {
  value = netbox_device_type.this.is_full_depth
}
