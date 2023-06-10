terraform {
  required_providers {
    netbox = {
      source = "wernerstrydom/netbox"
    }
  }
}

provider "netbox" {}

data "netbox_prefix" "this" {
  id = 197
}

output "netbox_prefix" {
  value = data.netbox_prefix.this
}
