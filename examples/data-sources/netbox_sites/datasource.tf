# Gets all the Netbox sites
data "netbox_sites" "this" {
}

output "sites" {
  value = data.netbox_sites.this.ids
}
