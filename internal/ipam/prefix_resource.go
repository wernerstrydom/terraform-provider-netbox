package ipam

import (
	"context"
	"fmt"
	"regexp"
	"strconv"

	"github.com/hashicorp/terraform-plugin-framework-validators/int64validator"
	"github.com/hashicorp/terraform-plugin-framework-validators/stringvalidator"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/int64planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/schema/validator"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/netbox-community/go-netbox/v3/netbox/client"
	"github.com/netbox-community/go-netbox/v3/netbox/client/ipam"
	"github.com/netbox-community/go-netbox/v3/netbox/models"
)

type prefixResourceModel struct {
	ID          types.String `tfsdk:"id"`
	Prefix      types.String `tfsdk:"prefix"`
	Description types.String `tfsdk:"description"`
	SiteID      types.Int64  `tfsdk:"site_id"`
	TenantID    types.Int64  `tfsdk:"tenant_id"`
	RoleID      types.Int64  `tfsdk:"role_id"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
	_ resource.Resource                = &prefixResource{}
	_ resource.ResourceWithConfigure   = &prefixResource{}
	_ resource.ResourceWithImportState = &prefixResource{}
)

type prefixResource struct {
	client *client.NetBoxAPI
}

// NewPrefixResource is a helper function to simplify the provider implementation.
func NewPrefixResource() resource.Resource {
	return &prefixResource{}
}

func (p *prefixResource) Configure(
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

func (p *prefixResource) Metadata(
	_ context.Context,
	request resource.MetadataRequest,
	response *resource.MetadataResponse,
) {
	response.TypeName = request.ProviderTypeName + "_prefix"
}

func (p *prefixResource) Schema(
	_ context.Context,
	_ resource.SchemaRequest,
	response *resource.SchemaResponse,
) {
	response.Schema = schema.Schema{
		Attributes: map[string]schema.Attribute{
			"id": schema.StringAttribute{
				Computed:            true,
				Optional:            true,
				Description:         "The unique numeric ID of the prefix.",
				Default:             nil,
				MarkdownDescription: "The unique numeric ID of the prefix.",
				Sensitive:           false,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
			},
			"prefix": schema.StringAttribute{
				Required:            true,
				Description:         "The prefix address in CIDR notation.",
				Default:             nil,
				MarkdownDescription: "The prefix address in CIDR notation.",
				Sensitive:           false,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
				Validators: []validator.String{
					stringvalidator.LengthBetween(1, 43),
					stringvalidator.RegexMatches(regexp.MustCompile(`^[0-9a-fA-F.:]+/[0-9]+$`), "???"),
				},
			},
			"description": schema.StringAttribute{
				Optional:            true,
				Description:         "A brief description of the prefix.",
				Default:             nil,
				MarkdownDescription: "A brief description of the prefix.",
				Sensitive:           false,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
				Validators: []validator.String{
					stringvalidator.LengthAtMost(200),
				},
			},
			"site_id": schema.Int64Attribute{
				Description: "The site to which this prefix is assigned.",
				Optional:    true,
				PlanModifiers: []planmodifier.Int64{
					int64planmodifier.UseStateForUnknown(),
				},
				Validators: []validator.Int64{
					int64validator.AtLeast(1),
				},
			},
			"tenant_id": schema.Int64Attribute{
				Description: "The tenant to which this prefix is assigned.",
				Optional:    true,
				PlanModifiers: []planmodifier.Int64{
					int64planmodifier.UseStateForUnknown(),
				},
				Validators: []validator.Int64{
					int64validator.AtLeast(1),
				},
			},
			"role_id": schema.Int64Attribute{
				Description: "The role to which this prefix is assigned.",
				Optional:    true,
				PlanModifiers: []planmodifier.Int64{
					int64planmodifier.UseStateForUnknown(),
				},
				Validators: []validator.Int64{
					int64validator.AtLeast(1),
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
	var state prefixResourceModel
	diags := request.Plan.Get(ctx, &state)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}

	params := ipam.IpamPrefixesCreateParams{
		Data: &models.WritablePrefix{
			Prefix:      state.Prefix.ValueStringPointer(),
			Description: state.Description.ValueString(),
			Site:        state.SiteID.ValueInt64Pointer(),
			Tenant:      state.TenantID.ValueInt64Pointer(),
			Role:        state.RoleID.ValueInt64Pointer(),
		},
		Context: ctx,
	}

	resp, err := p.client.Ipam.IpamPrefixesCreate(&params, nil)
	if err != nil {
		response.Diagnostics.AddError(
			"Error creating prefixes",
			err.Error(),
		)
		return
	}

	payload := resp.Payload
	state.ID = types.StringValue(fmt.Sprintf("%d", payload.ID))

	var siteID *int64
	if payload.Site == nil {
		siteID = nil
	} else {
		siteID = &payload.Site.ID
	}
	state.SiteID = types.Int64PointerValue(siteID)
	var tenantID *int64
	if payload.Tenant == nil {
		tenantID = nil
	} else {
		tenantID = &payload.Tenant.ID
	}
	state.TenantID = types.Int64PointerValue(tenantID)
	var roleID *int64
	if payload.Role == nil {
		roleID = nil
	} else {
		roleID = &payload.Role.ID
	}
	state.RoleID = types.Int64PointerValue(roleID)

	diags = response.State.Set(ctx, &state)
	response.Diagnostics.Append(diags...)

	if response.Diagnostics.HasError() {
		return
	}
}

func (p *prefixResource) Read(
	ctx context.Context,
	request resource.ReadRequest,
	response *resource.ReadResponse,
) {

	var state prefixResourceModel
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

	params := &ipam.IpamPrefixesReadParams{
		ID:      id,
		Context: ctx,
	}

	resp, err := p.client.Ipam.IpamPrefixesRead(params, nil)
	if err != nil {
		// TODO: Check for 404 and remove state if not found. We don't want to fail the plan if the resource is deleted outside of Terraform.
		response.Diagnostics.AddError(
			"Unable to read site",
			err.Error(),
		)
		return
	}

	payload := resp.Payload
	state.Prefix = types.StringPointerValue(payload.Prefix)
	state.Description = types.StringValue(payload.Description)

	var siteID *int64
	if payload.Site == nil {
		siteID = nil
	} else {
		siteID = &payload.Site.ID
	}
	state.SiteID = types.Int64PointerValue(siteID)
	var tenantID *int64
	if payload.Tenant == nil {
		tenantID = nil
	} else {
		tenantID = &payload.Tenant.ID
	}
	state.TenantID = types.Int64PointerValue(tenantID)
	var roleID *int64
	if payload.Role == nil {
		roleID = nil
	} else {
		roleID = &payload.Role.ID
	}
	state.RoleID = types.Int64PointerValue(roleID)

	diags := response.State.Set(ctx, state)
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
	var state prefixResourceModel
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

	params := &ipam.IpamPrefixesUpdateParams{
		Data: &models.WritablePrefix{
			Prefix:      state.Prefix.ValueStringPointer(),
			Description: state.Description.ValueString(),
			Site:        state.SiteID.ValueInt64Pointer(),
			Tenant:      state.TenantID.ValueInt64Pointer(),
			Role:        state.RoleID.ValueInt64Pointer(),
		},
		ID:      id,
		Context: ctx,
	}

	resp, err := p.client.Ipam.IpamPrefixesUpdate(params, nil)
	if err != nil {
		response.Diagnostics.AddError(
			"Unable to update site",
			err.Error(),
		)
		return
	}

	payload := resp.Payload
	state.Prefix = types.StringPointerValue(payload.Prefix)
	state.Description = types.StringValue(payload.Description)

	var siteID *int64
	if payload.Site == nil {
		siteID = nil
	} else {
		siteID = &payload.Site.ID
	}
	state.SiteID = types.Int64PointerValue(siteID)

	var tenantID *int64
	if payload.Tenant == nil {
		tenantID = nil
	} else {
		tenantID = &payload.Tenant.ID
	}
	state.TenantID = types.Int64PointerValue(tenantID)

	var roleID *int64
	if payload.Role == nil {
		roleID = nil
	} else {
		roleID = &payload.Role.ID
	}
	state.RoleID = types.Int64PointerValue(roleID)

	diags := response.State.Set(ctx, state)
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
	var state prefixResourceModel
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

	params := &ipam.IpamPrefixesDeleteParams{
		ID:      id,
		Context: ctx,
	}

	_, err = p.client.Ipam.IpamPrefixesDelete(params, nil)
	if err != nil {
		// TODO Check for 404 and return, since we don't want to fail on a 404
		response.Diagnostics.AddError(
			"Unable to delete site",
			err.Error(),
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
