package sites

import (
    "context"
    "errors"
    "net/http"

    "github.com/hashicorp/terraform-plugin-framework/diag"
    "github.com/hashicorp/terraform-plugin-framework/path"
    "github.com/hashicorp/terraform-plugin-framework/resource"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/float64planmodifier"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/int64planmodifier"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/setplanmodifier"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/stringdefault"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/dcim"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)

type siteResourceModel struct {
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
    PhysicalAddress     types.String  `tfsdk:"physical_address"`
    VirtualMachineCount types.Int64   `tfsdk:"virtual_machine_count"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ resource.Resource                = &siteResource{}
    _ resource.ResourceWithConfigure   = &siteResource{}
    _ resource.ResourceWithImportState = &siteResource{}
)

// prefixResource is the resource implementation.
type siteResource struct {
    client *client.NetBoxAPI
}

// NewSiteResource is a helper function to simplify the provider implementation.
func NewSiteResource() resource.Resource {
    return &siteResource{}
}

func (p *siteResource) Configure(
    ctx context.Context,
    request resource.ConfigureRequest,
    response *resource.ConfigureResponse,
) {
    if request.ProviderData == nil {
        return
    }

    c, ok := request.ProviderData.(*client.NetBoxAPI)
    if !ok {
        response.Diagnostics.AddError(
            "Unexpected Resource Configure Type",
            "The provider data was not of the expected type.",
        )
        return
    }

    p.client = c
}

func (p *siteResource) Metadata(
    ctx context.Context,
    request resource.MetadataRequest,
    response *resource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_site"
}

func (p *siteResource) Schema(
    ctx context.Context,
    request resource.SchemaRequest,
    response *resource.SchemaResponse,
) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "id": schema.StringAttribute{
                Computed:    true,
                Description: "Unique identifier for the site.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "asn_ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "Unique identifiers for the ASNs assigned to this site.",
                PlanModifiers: []planmodifier.Set{
                    setplanmodifier.UseStateForUnknown(),
                },
            },
            "circuit_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of circuits terminated at this site.",
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "comments": schema.StringAttribute{
                Optional:    true,
                Computed:    true,
                Description: "Free-form comments.",
                Default:     stringdefault.StaticString(""),
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "created": schema.StringAttribute{
                Computed:    true,
                Description: "Timestamp when the site was created.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "description": schema.StringAttribute{
                Optional:    true,
                Computed:    true,
                Default:     stringdefault.StaticString(""),
                Description: "Long-form name.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "device_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of devices at this site.",
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "display": schema.StringAttribute{
                Computed:    true,
                Description: "Site name as displayed in the UI.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "facility": schema.StringAttribute{
                Optional:    true,
                Computed:    true,
                Description: "Data center or facility designation for identifying the site.",
                Default:     stringdefault.StaticString(""),
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "group_id": schema.Int64Attribute{
                Optional:    true,
                Description: "The group to which the site belongs, if any.",
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "last_updated": schema.StringAttribute{
                Computed:    true,
                Description: "Timestamp when the site was last updated.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "latitude": schema.Float64Attribute{
                Optional:    true,
                Description: "GPS coordinates of the site for geolocation.",
                PlanModifiers: []planmodifier.Float64{
                    float64planmodifier.UseStateForUnknown(),
                },
            },
            "longitude": schema.Float64Attribute{
                Optional:    true,
                Description: "GPS coordinates of the site for geolocation.",
                PlanModifiers: []planmodifier.Float64{
                    float64planmodifier.UseStateForUnknown(),
                },
            },
            "name": schema.StringAttribute{
                Required:    true,
                Description: "The site's unique name.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "prefix_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of prefixes assigned to this site.",
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "rack_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of racks at this site.",
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "region_id": schema.Int64Attribute{
                Optional:    true,
                Description: "The parent region to which the site belongs, if any.",
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "shipping_address": schema.StringAttribute{
                Optional:    true,
                Computed:    true,
                Default:     stringdefault.StaticString(""),
                Description: "Physical address of the site.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "slug": schema.StringAttribute{
                Required:    true,
                Description: "Unique URL-friendly shorthand for the site.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "status": schema.StringAttribute{
                Optional:    true,
                Computed:    true,
                Default:     stringdefault.StaticString("active"),
                Description: "Operational status of the site.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "tag_ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "The tags assigned to this site.",
                PlanModifiers: []planmodifier.Set{
                    setplanmodifier.UseStateForUnknown(),
                },
            },
            "tenant_id": schema.Int64Attribute{
                Optional:    true,
                Description: "The tenant to which the site belongs, if any.",
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "timezone": schema.StringAttribute{
                Optional:    true,
                Description: "IANA timezone for the site, if any.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "vlan_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of VLANs assigned to this site.",
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "physical_address": schema.StringAttribute{
                Optional:    true,
                Computed:    true,
                Default:     stringdefault.StaticString(""),
                Description: "Physical address of the site.",
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "virtual_machine_count": schema.Int64Attribute{
                Computed:    true,
                Description: "Number of virtual machines at this site.",
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
        },
    }
}

func (p *siteResource) Create(
    ctx context.Context,
    request resource.CreateRequest,
    response *resource.CreateResponse,
) {

    var state siteResourceModel
    diags := request.Plan.Get(ctx, &state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    params := dcim.DcimSitesCreateParams{
        Data: &models.WritableSite{
            Comments:        state.Comments.ValueString(),
            CustomFields:    nil, // TODO: Implement
            Description:     state.Description.ValueString(),
            Facility:        state.Facility.ValueString(),
            Group:           state.GroupID.ValueInt64Pointer(),
            Latitude:        state.Latitude.ValueFloat64Pointer(),
            Longitude:       state.Longitude.ValueFloat64Pointer(),
            Name:            state.Name.ValueStringPointer(),
            PhysicalAddress: state.ShippingAddress.ValueString(),
            Region:          state.RegionID.ValueInt64Pointer(),
            ShippingAddress: state.ShippingAddress.ValueString(),
            Slug:            state.Slug.ValueStringPointer(),
            Status:          state.Status.ValueString(),
            Tags:            nil, // TODO: Implement
            Tenant:          state.TenantID.ValueInt64Pointer(),
            TimeZone:        state.TimeZone.ValueStringPointer(),
        },
        Context: ctx,
    }

    resp, err := p.client.Dcim.DcimSitesCreate(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Error creating site",
            err.Error(),
        )
        return
    }

    // convert payload id (and in64) to a types.String
    payload := resp.Payload

    state.ID = int64ToString(payload.ID)
    state.Created = types.StringValue(payload.Created.String())
    state.LastUpdated = types.StringValue(payload.LastUpdated.String())
    state.Slug = types.StringPointerValue(payload.Slug)
    state.Name = types.StringPointerValue(payload.Name)
    state.Display = types.StringValue(payload.Display)
    state.Facility = types.StringValue(payload.Facility)
    state.PhysicalAddress = types.StringValue(payload.PhysicalAddress)
    state.ShippingAddress = types.StringValue(payload.ShippingAddress)
    state.Status = types.StringPointerValue(payload.Status.Value)
    state.TimeZone = types.StringPointerValue(payload.TimeZone)
    state.Comments = types.StringValue(payload.Comments)
    state.Description = types.StringValue(payload.Description)
    state.CircuitCount = types.Int64Value(payload.CircuitCount)
    state.DeviceCount = types.Int64Value(payload.DeviceCount)
    state.PrefixCount = types.Int64Value(payload.PrefixCount)
    state.RackCount = types.Int64Value(payload.RackCount)
    state.VlanCount = types.Int64Value(payload.VlanCount)
    state.VirtualMachineCount = types.Int64Value(payload.VirtualmachineCount)

    if payload.Region != nil {
        state.RegionID = types.Int64Value(payload.Region.ID)
    } else {
        state.RegionID = types.Int64PointerValue(nil)
    }

    if payload.Group != nil {
        state.GroupID = types.Int64Value(payload.Group.ID)
    } else {
        state.GroupID = types.Int64PointerValue(nil)
    }

    if payload.Tenant != nil {
        state.TenantID = types.Int64Value(payload.Tenant.ID)
    } else {
        state.TenantID = types.Int64PointerValue(nil)
    }

    response.Diagnostics.Append(expandTags(payload.Tags, &state.TagIDs)...)
    if response.Diagnostics.HasError() {
        return
    }

    response.Diagnostics.Append(expandAsns(payload.Asns, &state.AsnIDs)...)
    if response.Diagnostics.HasError() {
        return
    }

    response.Diagnostics.Append(expandTags(payload.Tags, &state.TagIDs)...)
    if response.Diagnostics.HasError() {
        return
    }

    diags = response.State.Set(ctx, &state)
    response.Diagnostics.Append(diags...)

    if response.Diagnostics.HasError() {
        return
    }
}

func (p *siteResource) Read(ctx context.Context, request resource.ReadRequest, response *resource.ReadResponse) {
    var state siteResourceModel
    diags := request.State.Get(ctx, &state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    id, err := stringToInt64(state.ID)
    if err != nil {
        response.Diagnostics.AddError(
            "Error converting site ID to int64",
            err.Error(),
        )
        return
    }

    params := dcim.DcimSitesReadParams{
        ID:      id,
        Context: ctx,
    }

    resp, err := p.client.Dcim.DcimSitesRead(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Error retrieving site",
            err.Error(),
        )
        return
    }

    payload := resp.Payload
    diags = p.setData(state, payload)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    diags = response.State.Set(ctx, &state)
    response.Diagnostics.Append(diags...)

    if response.Diagnostics.HasError() {
        return
    }
}

func (p *siteResource) setData(
    state siteResourceModel,
    payload *models.Site,
) diag.Diagnostics {
    result := diag.Diagnostics{}

    state.ID = int64ToString(payload.ID)

    result.Append(expandTags(payload.Tags, &state.TagIDs)...)
    if result.HasError() {
        return result
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
    result.Append(expandTags(payload.Tags, &state.TagIDs)...)
    if result.HasError() {
        return result
    }
    if payload.Tenant != nil {
        state.TenantID = types.Int64Value(payload.Tenant.ID)
    } else {
        state.TenantID = types.Int64PointerValue(nil)
    }
    state.TimeZone = types.StringPointerValue(payload.TimeZone)
    state.VlanCount = types.Int64Value(payload.VlanCount)
    state.VirtualMachineCount = types.Int64Value(payload.VirtualmachineCount)
    return result
}

func (p *siteResource) Update(
    ctx context.Context,
    request resource.UpdateRequest,
    response *resource.UpdateResponse,
) {
    var plan siteResourceModel
    diags := request.Plan.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    id, err := stringToInt64(plan.ID)
    if err != nil {
        response.Diagnostics.AddError(
            "Error converting site ID to int64",
            err.Error(),
        )
        return
    }

    params := dcim.DcimSitesUpdateParams{
        Data:    p.toWritableSite(plan, id),
        ID:      id,
        Context: ctx,
    }

    resp, err := p.client.Dcim.DcimSitesUpdate(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Error updating site",
            err.Error(),
        )
        return
    }

    payload := resp.Payload
    diags = p.setData(plan, payload)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    diags = response.State.Set(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

func (p *siteResource) toWritableSite(plan siteResourceModel, id int64) *models.WritableSite {
    return &models.WritableSite{
        Comments:        plan.Comments.ValueString(),
        Description:     plan.Description.ValueString(),
        Facility:        plan.Facility.ValueString(),
        Group:           plan.GroupID.ValueInt64Pointer(),
        ID:              id,
        Latitude:        plan.Latitude.ValueFloat64Pointer(),
        Longitude:       plan.Longitude.ValueFloat64Pointer(),
        Name:            plan.Name.ValueStringPointer(),
        PhysicalAddress: plan.PhysicalAddress.ValueString(),
        Region:          plan.RegionID.ValueInt64Pointer(),
        ShippingAddress: plan.ShippingAddress.ValueString(),
        Slug:            plan.Slug.ValueStringPointer(),
        Status:          plan.Status.ValueString(),
        Tags:            nil, // TODO Tags
        Tenant:          plan.TenantID.ValueInt64Pointer(),
        TimeZone:        plan.TimeZone.ValueStringPointer(),

    }
}

func (p *siteResource) Delete(
    ctx context.Context,
    request resource.DeleteRequest,
    response *resource.DeleteResponse,
) {
    var plan siteResourceModel
    diags := request.State.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    id, err := stringToInt64(plan.ID)
    if err != nil {
        response.Diagnostics.AddError(
            "Error converting site ID to int64",
            err.Error(),
        )
        return
    }

    params := dcim.DcimSitesDeleteParams{
        ID:      id,
        Context: ctx,
    }

    _, err = p.client.Dcim.DcimSitesDelete(&params, nil)
    if err != nil {
        var apiErr *dcim.DcimSitesDeleteDefault
        if errors.As(err, &apiErr) {
            if apiErr.Code() == http.StatusNotFound {
                return
            }
        }

        response.Diagnostics.AddError(
            "Error deleting site",
            err.Error(),
        )
        return
    }
}

func (p *siteResource) ImportState(
    ctx context.Context,
    request resource.ImportStateRequest,
    response *resource.ImportStateResponse,
) {
    resource.ImportStatePassthroughID(ctx, path.Root("id"), request, response)
}
