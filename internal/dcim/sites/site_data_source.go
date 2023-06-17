package sites

import (
    "context"
    "fmt"
    "strconv"

    "github.com/hashicorp/terraform-plugin-framework/attr"
    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/hashicorp/terraform-plugin-framework/diag"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/hashicorp/terraform-plugin-framework/types/basetypes"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/dcim"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)

type siteDataSourceModel struct {
    ID                  types.String  `tfsdk:"id"`
    AsnIDs              types.Set     `tfsdk:"asn_ids"`
    CircuitCount        types.Int64   `tfsdk:"circuit_count"`
    Comments            types.String  `tfsdk:"comments"`
    Created             types.String  `tfsdk:"created"`
    Description         types.String  `tfsdk:"description"`
    DeviceCount         types.Int64   `tfsdk:"device_count"`
    Display             types.String  `tfsdk:"display"`
    Facility            types.String  `tfsdk:"facility"`
    GroupID             types.Int64   `tfsdk:"group_id"`
    LastUpdated         types.String  `tfsdk:"last_updated"`
    Latitude            types.Float64 `tfsdk:"latitude"`
    Longitude           types.Float64 `tfsdk:"longitude"`
    Name                types.String  `tfsdk:"name"`
    PrefixCount         types.Int64   `tfsdk:"prefix_count"`
    RackCount           types.Int64   `tfsdk:"rack_count"`
    RegionID            types.Int64   `tfsdk:"region_id"`
    ShippingAddress     types.String  `tfsdk:"shipping_address"`
    Slug                types.String  `tfsdk:"slug"`
    Status              types.String  `tfsdk:"status"`
    TagIDs              types.Set     `tfsdk:"tag_ids"`
    TenantID            types.Int64   `tfsdk:"tenant_id"`
    TimeZone            types.String  `tfsdk:"timezone"`
    VlanCount           types.Int64   `tfsdk:"vlan_count"`
    VirtualMachineCount types.Int64   `tfsdk:"virtual_machine_count"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &siteDataSource{}
    _ datasource.DataSourceWithConfigure = &siteDataSource{}
)

// siteDataSource is the data source implementation.
type siteDataSource struct {
    client *client.NetBoxAPI
}

// NewSiteDataSource is a helper function to simplify the provider implementation.
func NewSiteDataSource() datasource.DataSource {
    return &siteDataSource{}
}

// Metadata returns the data source type name.
func (d *siteDataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_site"
}

func (d *siteDataSource) Configure(
    ctx context.Context,
    request datasource.ConfigureRequest,
    response *datasource.ConfigureResponse,
) {
    if request.ProviderData == nil {
        return
    }

    c, ok := request.ProviderData.(*client.NetBoxAPI)
    if !ok {
        response.Diagnostics.AddError(
            "Unexpected Data Source Configure Type",
            fmt.Sprintf(
                "Expected *client.NetBoxAPI, got: %T. Please report this issue to the provider developers.",
                request.ProviderData,
            ),
        )

        return
    }

    d.client = c
}

func (d *siteDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "id": schema.StringAttribute{
                Required:    true,
                Description: "Unique identifier for the site.",
            },
            "asn_ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "Unique identifiers for the ASNs assigned to this site.",
            },
            "circuit_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of circuits terminated at this site.",
            },
            "comments": schema.StringAttribute{
                Computed:    true,
                Description: "Free-form comments.",
            },
            "created": schema.StringAttribute{
                Computed:    true,
                Description: "Timestamp when the site was created.",
            },
            "description": schema.StringAttribute{
                Computed:    true,
                Description: "Long-form name.",
            },
            "device_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of devices at this site.",
            },
            "display": schema.StringAttribute{
                Computed:    true,
                Description: "Site name as displayed in the UI.",
            },
            "facility": schema.StringAttribute{
                Computed:    true,
                Description: "Data center or facility designation for identifying the site.",
            },
            "group_id": schema.Int64Attribute{
                Computed:    true,
                Description: "The group to which the site belongs, if any.",
            },
            "last_updated": schema.StringAttribute{
                Computed:    true,
                Description: "Timestamp when the site was last updated.",
            },
            "latitude": schema.Float64Attribute{
                Computed:    true,
                Description: "GPS coordinates of the site for geolocation.",
            },
            "longitude": schema.Float64Attribute{
                Computed:    true,
                Description: "GPS coordinates of the site for geolocation.",
            },
            "name": schema.StringAttribute{
                Computed:    true,
                Description: "The site's unique name.",
            },
            "prefix_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of prefixes assigned to this site.",
            },
            "rack_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of racks at this site.",
            },
            "region_id": schema.Int64Attribute{
                Computed:    true,
                Description: "The parent region to which the site belongs, if any.",
            },
            "shipping_address": schema.StringAttribute{
                Computed:    true,
                Description: "Physical address of the site.",
            },
            "slug": schema.StringAttribute{
                Computed:    true,
                Description: "Unique URL-friendly shorthand for the site.",
            },
            "status": schema.StringAttribute{
                Computed:    true,
                Description: "Operational status of the site.",
            },
            "tag_ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "The tags assigned to this site.",
            },
            "tenant_id": schema.Int64Attribute{
                Computed:    true,
                Description: "The tenant to which the site belongs, if any.",
            },
            "timezone": schema.StringAttribute{
                Computed:    true,
                Description: "IANA timezone for the site, if any.",
            },
            "vlan_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of VLANs assigned to this site.",
            },
            "virtual_machine_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of virtual machines at this site.",
            },
        },
    }
}

func (d *siteDataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var state siteDataSourceModel
    response.Diagnostics.Append(request.Config.Get(ctx, &state)...)

    if response.Diagnostics.HasError() {
        return
    }

    id, err := stringToInt64(state.ID)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to read site",
            fmt.Sprintf("Unable to read site: %s", err),
        )
        return
    }

    param := dcim.NewDcimSitesReadParams().WithID(id)
    site, err := d.client.Dcim.DcimSitesRead(param, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to read site",
            fmt.Sprintf("Unable to read site: %s", err),
        )
        return
    }

    payload := site.Payload
    state.ID = int64ToString(payload.ID)

    response.Diagnostics.Append(expandAsns(payload.Asns, &state.AsnIDs)...)
    if response.Diagnostics.HasError() {
        return
    }

    state.CircuitCount = types.Int64Value(payload.CircuitCount)
    state.Comments = types.StringValue(payload.Comments)
    state.Created = types.StringValue(payload.Created.String())
    state.Description = types.StringValue(payload.Description)
    state.DeviceCount = types.Int64Value(payload.DeviceCount)
    state.Display = types.StringValue(payload.Display)
    state.Facility = types.StringValue(payload.Facility)
    if payload.Group != nil {
        state.GroupID = types.Int64Value(payload.Group.ID)
    } else {
        state.GroupID = types.Int64PointerValue(nil)
    }
    state.LastUpdated = types.StringValue(payload.LastUpdated.String())
    state.Latitude = types.Float64PointerValue(payload.Latitude)
    state.Longitude = types.Float64PointerValue(payload.Longitude)
    state.Name = types.StringPointerValue(payload.Name)
    state.PrefixCount = types.Int64Value(payload.PrefixCount)
    state.RackCount = types.Int64Value(payload.RackCount)
    if payload.Region != nil {
        state.RegionID = types.Int64Value(payload.Region.ID)
    } else {
        state.RegionID = types.Int64PointerValue(nil)
    }
    state.ShippingAddress = types.StringValue(payload.ShippingAddress)
    state.Slug = types.StringPointerValue(payload.Slug)
    if payload.Status != nil {
        state.Status = types.StringPointerValue(payload.Status.Value)
    } else {
        state.Status = types.StringPointerValue(nil)
    }
    response.Diagnostics.Append(expandTags(payload.Tags, &state.TagIDs)...)
    if response.Diagnostics.HasError() {
        return
    }
    if payload.Tenant != nil {
        state.TenantID = types.Int64Value(payload.Tenant.ID)
    } else {
        state.TenantID = types.Int64PointerValue(nil)
    }
    state.TimeZone = types.StringPointerValue(payload.TimeZone)
    state.VlanCount = types.Int64Value(payload.VlanCount)
    state.VirtualMachineCount = types.Int64Value(payload.VirtualmachineCount)

    response.State.Set(ctx, site)

    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

func int64ToString(value int64) basetypes.StringValue {
    return types.StringValue(fmt.Sprintf("%d", value))
}

func stringToInt64(value types.String) (id int64, err error) {
    id, err = strconv.ParseInt(value.ValueString(), 10, 64)
    if err != nil {
        return 0, err
    }
    return id, nil
}

func expandTags(values []*models.NestedTag, t *types.Set) diag.Diagnostics {
    return expand(
        values, t, func(value *models.NestedTag) attr.Value {
            return types.Int64Value(value.ID)
        },
    )
}

func expandAsns(values []*models.NestedASN, t *types.Set) diag.Diagnostics {
    return expand(
        values, t, func(value *models.NestedASN) attr.Value {
            return types.Int64Value(value.ID)
        },
    )
}

func expandSites(values []*models.Site, t *types.Set) diag.Diagnostics {
    return expand(
        values, t, func(value *models.Site) attr.Value {
            return types.Int64Value(value.ID)
        },
    )
}

func expand[T any](values []*T, t *types.Set, action func(value *T) attr.Value) diag.Diagnostics {
    var dg diag.Diagnostics
    result := make([]attr.Value, len(values))
    if len(values) == 0 {
        *t, dg = types.SetValue(types.Int64Type, result)
        return dg
    }
    for i, item := range values {
        result[i] = action(item)
    }
    *t, dg = types.SetValue(types.Int64Type, result)
    return dg
}
