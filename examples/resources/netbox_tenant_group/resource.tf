resource "netbox_tenant_group" "this" {
    name = "Test Tenant Group"
    slug = "test-tenant-group"
}


output "id" {
    value = netbox_tenant_group.this.id
}


output "name" {
    value = netbox_tenant_group.this.name
}


output "slug" {
    value = netbox_tenant_group.this.slug
}


output "description" {
    value = netbox_tenant_group.this.description
}
