terraform {
  required_providers {
    netbox = {
      source = "wernerstrydom/netbox"
    }
  }
}

provider "netbox" {}

data "netbox_prefix" "this_197" {
  id = 197
}

data "netbox_prefix" "this_198" {
  id = 198
}

output "netbox_prefix_197" {
  value = data.netbox_prefix.this_197
}

output "netbox_prefix_198" {
  value = data.netbox_prefix.this_198
}
