package prefixes

import (
    "context"
    "strconv"

    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)

// prefixModel is the schema for a NetBox prefix
type prefixModel struct {
    Comments     types.String `tfsdk:"comments"`
    Description  types.String `tfsdk:"description"`
    Display      types.String `tfsdk:"display"`
    Family       types.String `tfsdk:"family"`
    ID           types.String `tfsdk:"id"`
    IsPool       types.Bool   `tfsdk:"is_pool"`
    MarkUtilized types.Bool   `tfsdk:"mark_utilized"`
    Prefix       types.String `tfsdk:"prefix"`
    Status       types.String `tfsdk:"status"`
    Role         types.Int64  `tfsdk:"role_id"`
    Site         types.Int64  `tfsdk:"site_id"`
    Tenant       types.Int64  `tfsdk:"tenant_id"`
    Vlan         types.Int64  `tfsdk:"vlan_id"`
    Vrf          types.Int64  `tfsdk:"vrf_id"`
}

func (m *prefixModel) Update(ctx context.Context, payload *models.Prefix) {

    comments := payload.Comments
    description := payload.Description
    display := payload.Display
    id := payload.ID
    isPool := payload.IsPool
    markUtilized := payload.MarkUtilized
    prefix := payload.Prefix
    status := payload.Status.Value

    var roleId, siteId, tenantId, vlanId, vrfId *int64
    var family *string

    if payload.Role != nil {
        roleId = &payload.Role.ID
    }
    if payload.Site != nil {
        siteId = &payload.Site.ID
    }
    if payload.Tenant != nil {
        tenantId = &payload.Tenant.ID
    }
    if payload.Vlan != nil {
        vlanId = &payload.Vlan.ID
    }
    if payload.Vrf != nil {
        vrfId = &payload.Vrf.ID
    }
    if payload.Family != nil {
        family = payload.Family.Label
    }

    m.Comments = types.StringValue(comments)
    m.Description = types.StringValue(description)
    m.Display = types.StringValue(display)

    idString := strconv.FormatInt(id, 10)

    m.ID = types.StringValue(idString)
    m.IsPool = types.BoolValue(isPool)
    m.MarkUtilized = types.BoolValue(markUtilized)
    m.Prefix = types.StringPointerValue(prefix)
    m.Status = types.StringPointerValue(status)

    m.Role = types.Int64PointerValue(roleId)
    m.Site = types.Int64PointerValue(siteId)
    m.Tenant = types.Int64PointerValue(tenantId)
    m.Vlan = types.Int64PointerValue(vlanId)
    m.Vrf = types.Int64PointerValue(vrfId)
    m.Family = types.StringPointerValue(family)
}
