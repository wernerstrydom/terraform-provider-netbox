resource "netbox_prefix" "this" {
  prefix = "10.0.0.0/24"
}


output "description" {
  value = netbox_prefix.this.description
}


output "id" {
  value = netbox_prefix.this.id
}


output "prefix" {
  value = netbox_prefix.this.prefix
}
