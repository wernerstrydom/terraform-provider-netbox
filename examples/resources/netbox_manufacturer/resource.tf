resource "netbox_manufacturer" "this" {
  name = "Test Manufacturer"
  slug = "test-manufacturer"
}


output "id" {
  value = netbox_manufacturer.this.id
}


output "name" {
  value = netbox_manufacturer.this.name
}


output "slug" {
  value = netbox_manufacturer.this.slug
}


output "description" {
  value = netbox_manufacturer.this.description
}
