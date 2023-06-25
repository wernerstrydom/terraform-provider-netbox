package dcim

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
	"github.com/netbox-community/go-netbox/v3/netbox/client/dcim"
	"github.com/netbox-community/go-netbox/v3/netbox/models"
)

type siteResourceModel struct {
	ID          types.String `tfsdk:"id"`
	Name        types.String `tfsdk:"name"`
	Slug        types.String `tfsdk:"slug"`
	Description types.String `tfsdk:"description"`
	TenantID    types.Int64  `tfsdk:"tenant_id"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
	_ resource.Resource                = &siteResource{}
	_ resource.ResourceWithConfigure   = &siteResource{}
	_ resource.ResourceWithImportState = &siteResource{}
)

type siteResource struct {
	client *client.NetBoxAPI
}

// NewSiteResource is a helper function to simplify the provider implementation.
func NewSiteResource() resource.Resource {
	return &siteResource{}
}

func (p *siteResource) Configure(
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

func (p *siteResource) Metadata(
	_ context.Context,
	request resource.MetadataRequest,
	response *resource.MetadataResponse,
) {
	response.TypeName = request.ProviderTypeName + "_site"
}

func (p *siteResource) Schema(
	_ context.Context,
	_ resource.SchemaRequest,
	response *resource.SchemaResponse,
) {
	response.Schema = schema.Schema{
		Attributes: map[string]schema.Attribute{
			"id": schema.StringAttribute{
				Computed:            true,
				Optional:            true,
				Description:         "The unique numeric ID of the site.",
				Default:             nil,
				MarkdownDescription: "The unique numeric ID of the site.",
				Sensitive:           false,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
			},
			"name": schema.StringAttribute{
				Required:            true,
				Description:         "The name of the site.",
				Default:             nil,
				MarkdownDescription: "The name of the site.",
				Sensitive:           false,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
				Validators: []validator.String{
					stringvalidator.LengthBetween(1, 100),
				},
			},
			"slug": schema.StringAttribute{
				Required:            true,
				Description:         "A unique slug identifier for the site.",
				Default:             nil,
				MarkdownDescription: "A unique slug identifier for the site.",
				Sensitive:           false,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
				Validators: []validator.String{
					stringvalidator.LengthBetween(1, 100),
					stringvalidator.RegexMatches(regexp.MustCompile(`^[-a-zA-Z0-9_]+$`), "???"),
				},
			},
			"description": schema.StringAttribute{
				Optional:            true,
				Description:         "A brief description of the site.",
				Default:             nil,
				MarkdownDescription: "A brief description of the site.",
				Sensitive:           false,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
				Validators: []validator.String{
					stringvalidator.LengthAtMost(100),
				},
			},
			"tenant_id": schema.Int64Attribute{
				Description: "The tenant to which this site is assigned.",
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
			Name:        state.Name.ValueStringPointer(),
			Slug:        state.Slug.ValueStringPointer(),
			Description: state.Description.ValueString(),
			Tenant:      state.TenantID.ValueInt64Pointer(),
		},
		Context: ctx,
	}

	resp, err := p.client.Dcim.DcimSitesCreate(&params, nil)
	if err != nil {
		response.Diagnostics.AddError(
			"Error creating sites",
			err.Error(),
		)
		return
	}

	payload := resp.Payload
	state.ID = types.StringValue(fmt.Sprintf("%d", payload.ID))

	var tenantID *int64
	if payload.Tenant == nil {
		tenantID = nil
	} else {
		tenantID = &payload.Tenant.ID
	}
	state.TenantID = types.Int64PointerValue(tenantID)

	diags = response.State.Set(ctx, &state)
	response.Diagnostics.Append(diags...)

	if response.Diagnostics.HasError() {
		return
	}
}

func (p *siteResource) Read(
	ctx context.Context,
	request resource.ReadRequest,
	response *resource.ReadResponse,
) {

	var state siteResourceModel
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

	params := &dcim.DcimSitesReadParams{
		ID:      id,
		Context: ctx,
	}

	resp, err := p.client.Dcim.DcimSitesRead(params, nil)
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
	state.Description = types.StringValue(payload.Description)

	var tenantID *int64
	if payload.Tenant == nil {
		tenantID = nil
	} else {
		tenantID = &payload.Tenant.ID
	}
	state.TenantID = types.Int64PointerValue(tenantID)

	diags := response.State.Set(ctx, state)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}
}

func (p *siteResource) Update(
	ctx context.Context,
	request resource.UpdateRequest,
	response *resource.UpdateResponse,
) {
	var state siteResourceModel
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

	params := &dcim.DcimSitesUpdateParams{
		Data: &models.WritableSite{
			Name:        state.Name.ValueStringPointer(),
			Slug:        state.Slug.ValueStringPointer(),
			Description: state.Description.ValueString(),
			Tenant:      state.TenantID.ValueInt64Pointer(),
		},
		ID:      id,
		Context: ctx,
	}

	resp, err := p.client.Dcim.DcimSitesUpdate(params, nil)
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
	state.Description = types.StringValue(payload.Description)

	var tenantID *int64
	if payload.Tenant == nil {
		tenantID = nil
	} else {
		tenantID = &payload.Tenant.ID
	}
	state.TenantID = types.Int64PointerValue(tenantID)

	diags := response.State.Set(ctx, state)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}
}

func (p *siteResource) Delete(
	ctx context.Context,
	request resource.DeleteRequest,
	response *resource.DeleteResponse,
) {
	var state siteResourceModel
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

	params := &dcim.DcimSitesDeleteParams{
		ID:      id,
		Context: ctx,
	}

	_, err = p.client.Dcim.DcimSitesDelete(params, nil)
	if err != nil {
		// TODO Check for 404 and return, since we don't want to fail on a 404
		response.Diagnostics.AddError(
			"Unable to delete site",
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
