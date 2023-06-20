# Gets a Netbox manufacturer by ID
data "netbox_manufacturer" "this" {
  id = "4"
}

output "id" {
  value = data.netbox_manufacturer.this.id
}

output "name" {
  value = data.netbox_manufacturer.this.name
}

output "slug" {
  value = data.netbox_manufacturer.this.slug
}