# Gets all the Netbox tenants
data "netbox_tenants" "this" {
}

output "tenants" {
  value = data.netbox_tenants.this.ids
}
