# Gets a Netbox tenant by ID
data "netbox_tenant" "this" {
  id = "4"
}

output "id" {
  value = data.netbox_tenant.this.id
}

output "name" {
  value = data.netbox_tenant.this.name
}

output "slug" {
  value = data.netbox_tenant.this.slug
}

output "description" {
  value = data.netbox_tenant.this.description
}