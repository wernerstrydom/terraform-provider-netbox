# Gets all the Netbox prefixes
data "netbox_prefixes" "this" {
}

output "prefixes" {
  value = data.netbox_prefixes.this.ids
}
