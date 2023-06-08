terraform {
  required_providers {
    netbox = {
      source = "wernerstrydom/netbox"
    }
  }
}

provider "netbox" {}


data "netbox_sites" "all" {}


output "all_sites" {
  value = data.netbox_sites.all.sites
}
