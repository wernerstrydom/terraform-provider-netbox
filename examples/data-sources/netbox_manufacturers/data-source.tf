# Gets all the Netbox manufacturers
data "netbox_manufacturers" "this" {
}

output "manufacturers" {
  value = data.netbox_manufacturers.this.ids
}
