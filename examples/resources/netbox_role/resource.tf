resource "netbox_role" "this" {
  name = "Test Role"
  slug = "test-role"
}


output "id" {
  value = netbox_role.this.id
}


output "name" {
  value = netbox_role.this.name
}


output "slug" {
  value = netbox_role.this.slug
}
