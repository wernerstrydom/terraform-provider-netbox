resource "netbox_role" "this" {
    name = "name1"
    slug = "name-1"
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


output "description" {
    value = netbox_role.this.description
}
