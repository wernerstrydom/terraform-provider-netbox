# Gets a Netbox role by ID
data "netbox_role" "this" {
  id = "4"
}

output "id" {
  value = data.netbox_role.this.id
}

output "name" {
  value = data.netbox_role.this.name
}

output "slug" {
  value = data.netbox_role.this.slug
}