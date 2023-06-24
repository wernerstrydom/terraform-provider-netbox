# Gets a Netbox tenant group by ID
data "netbox_tenant_group" "this" {
  id = "4"
}

output "id" {
  value = data.netbox_tenant_group.this.id
}

output "name" {
  value = data.netbox_tenant_group.this.name
}

output "slug" {
  value = data.netbox_tenant_group.this.slug
}

output "description" {
  value = data.netbox_tenant_group.this.description
}