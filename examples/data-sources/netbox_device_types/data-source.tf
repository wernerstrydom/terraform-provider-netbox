# Gets all the Netbox device types
data "netbox_device_types" "this" {
}

output "device_types" {
  value = data.netbox_device_types.this.ids
}
