resource "netbox_device_type" "this" {
    model = "Test Device Type"
    slug = "test-device-type"
}


output "description" {
    value = netbox_device_type.this.description
}


output "id" {
    value = netbox_device_type.this.id
}


output "is_full_depth" {
    value = netbox_device_type.this.is_full_depth
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


output "u_height" {
    value = netbox_device_type.this.u_height
}


output "weight" {
    value = netbox_device_type.this.weight
}
