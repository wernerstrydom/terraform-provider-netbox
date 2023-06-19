package prefixes

import (
    "context"
    "errors"
    "net/http"
    "strconv"

    "github.com/hashicorp/terraform-plugin-framework/path"
    "github.com/hashicorp/terraform-plugin-framework/resource"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/booldefault"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/boolplanmodifier"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/int64planmodifier"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/stringdefault"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/ipam"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)

// Ensure the implementation satisfies the expected interfaces.
var (
    _ resource.Resource                = &prefixResource{}
    _ resource.ResourceWithConfigure   = &prefixResource{}
    _ resource.ResourceWithImportState = &prefixResource{}
)

// NewPrefixResource is a helper function to simplify the provider implementation.
func NewPrefixResource() resource.Resource {
    return &prefixResource{}
}

// prefixResource is the resource implementation.
type prefixResource struct {
    client *client.NetBoxAPI
}

func (p *prefixResource) Configure(
    ctx context.Context,
    request resource.ConfigureRequest,
    response *resource.ConfigureResponse,
) {
    if request.ProviderData == nil {
        return
    }

    client, ok := request.ProviderData.(*client.NetBoxAPI)
    if !ok {
        response.Diagnostics.AddError(
            "Unexpected Resource Configure Type",
            "The provider data was not of the expected type.",
        )
        return
    }

    p.client = client
}

func (p *prefixResource) Metadata(
    ctx context.Context,
    request resource.MetadataRequest,
    response *resource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_prefix"
}

func (p *prefixResource) Schema(
    ctx context.Context,
    request resource.SchemaRequest,
    response *resource.SchemaResponse,
) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{

            "comments": schema.StringAttribute{
                Optional: true,
                Computed: true,
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
                Default: stringdefault.StaticString(""),
            },
            "description": schema.StringAttribute{
                Optional: true,
                Computed: true,
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
                Default: stringdefault.StaticString(""),
            },
            "display": schema.StringAttribute{
                Computed: true,
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "family": schema.StringAttribute{
                Computed: true,
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "id": schema.StringAttribute{
                Computed: true,
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
            },
            "is_pool": schema.BoolAttribute{
                Optional: true,
                Computed: true,
                Default:  booldefault.StaticBool(false),
            },
            "mark_utilized": schema.BoolAttribute{
                Optional: true,
                Computed: true,
                PlanModifiers: []planmodifier.Bool{
                    boolplanmodifier.UseStateForUnknown(),
                },
                Default: booldefault.StaticBool(false),
            },
            "prefix": schema.StringAttribute{
                Required: true,
            },
            "status": schema.StringAttribute{
                Optional: true,
                Computed: true,
                PlanModifiers: []planmodifier.String{
                    stringplanmodifier.UseStateForUnknown(),
                },
                Default: stringdefault.StaticString("active"),
            },
            "role_id": schema.Int64Attribute{
                Optional: true,
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "site_id": schema.Int64Attribute{
                Optional: true,
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "tenant_id": schema.Int64Attribute{
                Optional: true,
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "vlan_id": schema.Int64Attribute{
                Optional: true,
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
            "vrf_id": schema.Int64Attribute{
                Optional: true,
                PlanModifiers: []planmodifier.Int64{
                    int64planmodifier.UseStateForUnknown(),
                },
            },
        },
    }
}

func (p *prefixResource) Create(
    ctx context.Context,
    request resource.CreateRequest,
    response *resource.CreateResponse,
) {

    var plan prefixModel
    diags := request.Plan.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    params := ipam.NewIpamPrefixesCreateParams()
    params.Data = &models.WritablePrefix{}
    if plan.Tenant.ValueInt64() != 0 {
        params.Data.Tenant = plan.Tenant.ValueInt64Pointer()
    }
    if plan.Site.ValueInt64() != 0 {
        params.Data.Site = plan.Site.ValueInt64Pointer()
    }
    if plan.Vrf.ValueInt64() != 0 {
        params.Data.Vrf = plan.Vrf.ValueInt64Pointer()
    }
    if plan.Vlan.ValueInt64() != 0 {
        params.Data.Vlan = plan.Vlan.ValueInt64Pointer()
    }
    if plan.Role.ValueInt64() != 0 {
        params.Data.Role = plan.Role.ValueInt64Pointer()
    }

    params.Data.Prefix = plan.Prefix.ValueStringPointer()
    if plan.Description.ValueString() != "" {
        params.Data.Description = plan.Description.ValueString()
    }
    if plan.Comments.ValueString() != "" {
        params.Data.Comments = plan.Comments.ValueString()
    }
    if plan.Status.ValueString() != "" {
        params.Data.Status = plan.Status.ValueString()
    }

    params.Data.IsPool = plan.IsPool.ValueBool()
    params.Data.MarkUtilized = plan.MarkUtilized.ValueBool()
    if plan.Display.ValueString() != "" {
        params.Data.Display = plan.Display.ValueString()
    }

    output, err := p.client.Ipam.IpamPrefixesCreate(params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to create prefix",
            err.Error(),
        )
        return
    }

    payload := output.Payload
    plan.Update(ctx, payload)

    diags = response.State.Set(ctx, &plan)
    response.Diagnostics.Append(diags...)

    if response.Diagnostics.HasError() {
        return
    }
}

func (p *prefixResource) Read(ctx context.Context, request resource.ReadRequest, response *resource.ReadResponse) {
    var plan prefixModel
    diags := request.State.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    idString := plan.ID.ValueString()
    if idString == "" {
        response.State.RemoveResource(ctx)
        return
    }

    id, err := strconv.ParseInt(idString, 10, 64)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to parse prefix id",
            err.Error(),
        )
        return
    }

    params := ipam.NewIpamPrefixesReadParams()
    params.ID = id

    output, err := p.client.Ipam.IpamPrefixesRead(params, nil)
    if err != nil {
        var apiErr *ipam.IpamPrefixesReadDefault
        if errors.As(err, &apiErr) {
            if apiErr.Code() == http.StatusNotFound {
                response.State.RemoveResource(ctx)
                return
            }

            response.Diagnostics.AddError(
                "Unable to read prefix (api error)",
                apiErr.String(),
            )
        } else {
            response.Diagnostics.AddError(
                "Unable to read prefix (unknown error)",
                err.Error(),
            )
        }
        return
    }

    payload := output.Payload
    plan.Update(ctx, payload)

    diags = response.State.Set(ctx, &plan)
    response.Diagnostics.Append(diags...)

    if response.Diagnostics.HasError() {
        return
    }
}

func (p *prefixResource) Update(
    ctx context.Context,
    request resource.UpdateRequest,
    response *resource.UpdateResponse,
) {
    var plan prefixModel
    diags := request.Plan.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    id, err := strconv.ParseInt(plan.ID.ValueString(), 10, 64)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to parse prefix id",
            err.Error(),
        )
        return
    }

    params := ipam.NewIpamPrefixesUpdateParams()
    params.ID = id
    params.Data = &models.WritablePrefix{
        Comments:     plan.Comments.ValueString(),
        Description:  plan.Display.ValueString(),
        Display:      plan.Display.ValueString(),
        ID:           id,
        IsPool:       plan.IsPool.ValueBool(),
        MarkUtilized: plan.MarkUtilized.ValueBool(),
        Prefix:       plan.Prefix.ValueStringPointer(),
        Role:         plan.Role.ValueInt64Pointer(),
        Site:         plan.Site.ValueInt64Pointer(),
        Status:       plan.Status.ValueString(),
        Tenant:       plan.Tenant.ValueInt64Pointer(),
        Vlan:         plan.Vlan.ValueInt64Pointer(),
        Vrf:          plan.Vrf.ValueInt64Pointer(),
    }

    output, err := p.client.Ipam.IpamPrefixesUpdate(params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to update prefix",
            err.Error(),
        )
        return
    }

    payload := output.Payload
    plan.Update(ctx, payload)

    diags = response.State.Set(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

func (p *prefixResource) Delete(
    ctx context.Context,
    request resource.DeleteRequest,
    response *resource.DeleteResponse,
) {
    var plan prefixModel
    diags := request.State.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    id, err := strconv.ParseInt(plan.ID.ValueString(), 10, 64)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to parse prefix id",
            err.Error(),
        )
        return
    }

    params := ipam.NewIpamPrefixesDeleteParams()
    params.ID = id

    _, err = p.client.Ipam.IpamPrefixesDelete(params, nil)
    if err != nil {
        var apiErr *ipam.IpamPrefixesDeleteDefault
        if errors.As(err, &apiErr) {
            if apiErr.Code() == http.StatusNotFound {
                return
            }
        }
        response.Diagnostics.AddError(
            "Error Deleting Prefix",
            "Could not delete prefix, unexpected error: "+err.Error(),
        )
        return
    }
}

func (p *prefixResource) ImportState(
    ctx context.Context,
    request resource.ImportStateRequest,
    response *resource.ImportStateResponse,
) {
    resource.ImportStatePassthroughID(ctx, path.Root("id"), request, response)
}
