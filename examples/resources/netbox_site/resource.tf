resource "netbox_site" "this" {
  name = "Test Site"
  slug = "test-site"
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
