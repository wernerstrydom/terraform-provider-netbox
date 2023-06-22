---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "netbox_role Data Source - terraform-provider-netbox"
subcategory: ""
description: |-
  
---

# netbox_role (Data Source)



## Example Usage

```terraform
# Gets a Netbox role by ID
data "netbox_role" "this" {
  id = "4"
}

output "id" {
  value = data.netbox_role.this.id
}

output "name" {
  value = data.netbox_role.this.name
}

output "slug" {
  value = data.netbox_role.this.slug
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `id` (String) The unique numeric ID of the role.

### Read-Only

- `name` (String) The name of the role.
- `slug` (String) A unique slug identifier for the role.