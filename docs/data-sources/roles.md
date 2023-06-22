---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "netbox_roles Data Source - terraform-provider-netbox"
subcategory: ""
description: |-
  
---

# netbox_roles (Data Source)



## Example Usage

```terraform
# Gets all the Netbox roles
data "netbox_roles" "this" {
}

output "roles" {
  value = data.netbox_roles.this.ids
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Read-Only

- `ids` (Set of Number) The IDs of the role.