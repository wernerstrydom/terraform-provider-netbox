resource "netbox_prefix" "this" {
  prefix      = "192.168.3.0/24"
  description = "This ain't the prefix you're looking for"
}

output "prefix" {
  value = netbox_prefix.this
}