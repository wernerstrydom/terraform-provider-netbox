# Gets all the Netbox tenant groups
data "netbox_tenant_groups" "this" {
}

output "tenant_groups" {
  value = data.netbox_tenant_groups.this.ids
}
