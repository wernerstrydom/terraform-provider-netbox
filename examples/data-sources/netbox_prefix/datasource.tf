# Gets a Netbox prefix by ID
data "netbox_prefix" "this" {
  id = "4"
}

output "id" {
  value = data.netbox_prefix.this.id
}

output "prefix" {
  value = data.netbox_prefix.this.prefix
}

output "description" {
  value = data.netbox_prefix.this.description
}