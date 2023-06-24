resource "netbox_tenant" "this" {
  name = "name1"
  slug = "name-1"
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


output "description" {
  value = netbox_tenant.this.description
}
