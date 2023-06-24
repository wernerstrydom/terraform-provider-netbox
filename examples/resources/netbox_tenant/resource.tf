resource "netbox_tenant" "this" {
  name = "Test Tenant"
  slug = "test-tenant"
}


output "description" {
  value = netbox_tenant.this.description
}


output "id" {
  value = netbox_tenant.this.id
}


output "name" {
  value = netbox_tenant.this.name
}


output "slug" {
  value = netbox_tenant.this.slug
}
