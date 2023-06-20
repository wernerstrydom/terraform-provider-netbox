# Gets all the Netbox tenant groups
data "netbox_tenant_groups" "this" {
}

output "tenant groups" {
  value = data.netbox_tenant_groups.this.ids
}
