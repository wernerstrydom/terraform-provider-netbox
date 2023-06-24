resource "netbox_site" "this" {
  name = "name1"
  slug = "name-1"
}


output "id" {
  value = netbox_site.this.id
}


output "name" {
  value = netbox_site.this.name
}


output "slug" {
  value = netbox_site.this.slug
}


output "description" {
  value = netbox_site.this.description
}
