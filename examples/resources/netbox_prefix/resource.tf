resource "netbox_prefix" "this" {
    prefix = "10.0.0.0/24"
}


output "id" {
    value = netbox_prefix.this.id
}


output "prefix" {
    value = netbox_prefix.this.prefix
}


output "description" {
    value = netbox_prefix.this.description
}
