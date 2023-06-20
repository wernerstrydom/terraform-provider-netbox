package tenancy

import (
	"context"
	"fmt"
	"strconv"

	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/tenancy"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)

type tenantGroupResourceModel struct {

    ID types.String `tfsdk:"id"`
    Name types.String `tfsdk:"name"`
    Slug types.String `tfsdk:"slug"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ resource.Resource                = &tenantGroupResource{}
    _ resource.ResourceWithConfigure   = &tenantGroupResource{}
    _ resource.ResourceWithImportState = &tenantGroupResource{}
)

type tenantGroupResource struct {
    client *client.NetBoxAPI
}

// NewTenantGroupResource is a helper function to simplify the provider implementation.
func NewTenantGroupResource() resource.Resource {
    return &tenantGroupResource{}
}

func (p *tenantGroupResource) Configure(
    _ context.Context,
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


func (p *tenantGroupResource) Metadata(
    _ context.Context,
    request resource.MetadataRequest,
    response *resource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_tenant_group"
}

func (p *tenantGroupResource) Schema(
    _ context.Context,
    _ resource.SchemaRequest,
    response *resource.SchemaResponse,
) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "id": schema.StringAttribute{
                Computed:    true,
                
                Description: "The unique numeric ID of the tenant group.",
            },
            "name": schema.StringAttribute{
                
                Required:    true,
                Description: "The name of the tenant group.",
            },
            "slug": schema.StringAttribute{
                
                Required:    true,
                Description: "A unique slug identifier for the tenant group.",
            },
        },
    }
}

func (p *tenantGroupResource) Create(
    ctx context.Context,
    request resource.CreateRequest,
    response *resource.CreateResponse,
) {
    var state tenantGroupResourceModel
    diags := request.Plan.Get(ctx, &state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    params := tenancy.TenancyTenantGroupsCreateParams{
        Data: &models.WritableTenantGroup{
            Name: state.Name.ValueStringPointer(),
            Slug: state.Slug.ValueStringPointer(),
        },
        Context: ctx,
    }

    resp, err := p.client.Tenancy.TenancyTenantGroupsCreate(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Error creating tenantGroups",
            err.Error(),
        )
        return
    }

    payload := resp.Payload
    state.ID = types.StringValue(fmt.Sprintf("%d", payload.ID))

    

    diags = response.State.Set(ctx, &state)
    response.Diagnostics.Append(diags...)

    if response.Diagnostics.HasError() {
        return
    }
}

func (p *tenantGroupResource) Read(
    ctx context.Context,
    request resource.ReadRequest,
    response *resource.ReadResponse,
) {

    var state tenantGroupResourceModel
    response.Diagnostics.Append(request.State.Get(ctx, &state)...)

    if response.Diagnostics.HasError() {
        return
    }

    var err error
    var id int64

    id, err = strconv.ParseInt(state.ID.ValueString(), 10, 64)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to parse ID",
            fmt.Sprintf("Unable to parse ID %s: %s", state.ID.ValueString(), err),
        )

        return
    }

    params := &tenancy.TenancyTenantGroupsReadParams{
        ID: id,
        Context: ctx,
    }

    resp, err := p.client.Tenancy.TenancyTenantGroupsRead(params, nil)
    if err != nil {
        // TODO: Check for 404 and remove state if not found. We don't want to fail the plan if the resource is deleted outside of Terraform.
        response.Diagnostics.AddError(
            "Unable to read site",
            err.Error(),
        )
        return
    }

    payload := resp.Payload
    state.Name = types.StringPointerValue(payload.Name)
    state.Slug = types.StringPointerValue(payload.Slug)

    

    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

func (p *tenantGroupResource) Update(
    ctx context.Context,
    request resource.UpdateRequest,
    response *resource.UpdateResponse,
) {
    var state tenantGroupResourceModel
    response.Diagnostics.Append(request.State.Get(ctx, &state)...)

    if response.Diagnostics.HasError() {
        return
    }

    var err error
    var id int64

    id, err = strconv.ParseInt(state.ID.ValueString(), 10, 64)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to parse ID",
            fmt.Sprintf("Unable to parse ID %s: %s", state.ID.ValueString(), err),
        )

        return
    }

    params := &tenancy.TenancyTenantGroupsUpdateParams{
        Data: &models.WritableTenantGroup{
                          Name: state.Name.ValueStringPointer(),
                          Slug: state.Slug.ValueStringPointer(),
                      },
        ID: id,
        Context: ctx,
    }

    resp, err := p.client.Tenancy.TenancyTenantGroupsUpdate(params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to update site",
            err.Error(),
        )
        return
    }

    payload := resp.Payload
    state.Name = types.StringPointerValue(payload.Name)
    state.Slug = types.StringPointerValue(payload.Slug)

    

    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

func (p *tenantGroupResource) Delete(
    ctx context.Context,
    request resource.DeleteRequest,
    response *resource.DeleteResponse,
) {
    var state tenantGroupResourceModel
    response.Diagnostics.Append(request.State.Get(ctx, &state)...)

    if response.Diagnostics.HasError() {
        return
    }

    var err error
    var id int64

    id, err = strconv.ParseInt(state.ID.ValueString(), 10, 64)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to parse ID",
            fmt.Sprintf("Unable to parse ID %s: %s", state.ID.ValueString(), err),
        )

        return
    }

    params := &tenancy.TenancyTenantGroupsDeleteParams{
        ID: id,
        Context: ctx,
    }

    _, err = p.client.Tenancy.TenancyTenantGroupsDelete(params, nil)
    if err != nil {
        // TODO Check for 404 and return, since we don't want to fail on a 404
        response.Diagnostics.AddError(
            "Unable to delete site",
            err.Error(),
        )
        return
    }
}

func (p *tenantGroupResource) ImportState(
    ctx context.Context,
    request resource.ImportStateRequest,
    response *resource.ImportStateResponse,
) {
    resource.ImportStatePassthroughID(ctx, path.Root("id"), request, response)
}


