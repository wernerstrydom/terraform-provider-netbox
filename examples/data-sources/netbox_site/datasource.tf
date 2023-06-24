# Gets a Netbox site by ID
data "netbox_site" "this" {
  id = "4"
}

output "id" {
  value = data.netbox_site.this.id
}

output "name" {
  value = data.netbox_site.this.name
}

output "slug" {
  value = data.netbox_site.this.slug
}

output "description" {
  value = data.netbox_site.this.description
}