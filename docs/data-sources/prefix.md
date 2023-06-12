---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "netbox_prefix Data Source - terraform-provider-netbox"
subcategory: ""
description: |-
  
---

# netbox_prefix (Data Source)



## Example Usage

```terraform
# List Netbox Prefix with id 4
data "netbox_prefix" "this" {
  id = "4"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Read-Only

- `comments` (String)
- `description` (String)
- `display` (String)
- `family` (String)
- `id` (String) The ID of this resource.
- `is_pool` (Boolean)
- `mark_utilized` (Boolean)
- `prefix` (String)
- `role_id` (Number)
- `site_id` (Number)
- `status` (String)
- `tenant_id` (Number)
- `vlan_id` (Number)
- `vrf_id` (Number)