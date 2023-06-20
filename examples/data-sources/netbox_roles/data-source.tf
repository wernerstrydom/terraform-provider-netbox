# Gets all the Netbox roles
data "netbox_roles" "this" {
}

output "roles" {
  value = data.netbox_roles.this.ids
}
