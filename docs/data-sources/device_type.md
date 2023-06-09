---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "netbox_device_type Data Source - terraform-provider-netbox"
subcategory: ""
description: |-
  
---

# netbox_device_type (Data Source)





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `id` (String) The unique numeric ID of the device type.

### Read-Only

- `description` (String) A brief description of the device type.
- `is_full_depth` (Boolean) Indicates whether this device type consumes the full depth of its parent rack.
- `manufacturer_id` (Number) The device type's manufacturer.
- `model` (String) The model name of the device type.
- `part_number` (String) The part number associated with the device type.
- `slug` (String) A unique slug identifier for the device type.
- `u_height` (Number) The height of the device type, in rack units.
- `weight` (Number) The weight of the device type.
