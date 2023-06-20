package ipam

import (
	"context"
	"fmt"
	"strconv"

	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/netbox-community/go-netbox/v3/netbox/client"
	"github.com/netbox-community/go-netbox/v3/netbox/client/ipam"
	"github.com/netbox-community/go-netbox/v3/netbox/models"
)

type roleResourceModel struct {
	ID   types.String `tfsdk:"id"`
	Name types.String `tfsdk:"name"`
	Slug types.String `tfsdk:"slug"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
	_ resource.Resource                = &roleResource{}
	_ resource.ResourceWithConfigure   = &roleResource{}
	_ resource.ResourceWithImportState = &roleResource{}
)

type roleResource struct {
	client *client.NetBoxAPI
}

// NewRoleResource is a helper function to simplify the provider implementation.
func NewRoleResource() resource.Resource {
	return &roleResource{}
}

func (p *roleResource) Configure(
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

func (p *roleResource) Metadata(
	_ context.Context,
	request resource.MetadataRequest,
	response *resource.MetadataResponse,
) {
	response.TypeName = request.ProviderTypeName + "_role"
}

func (p *roleResource) Schema(
	_ context.Context,
	_ resource.SchemaRequest,
	response *resource.SchemaResponse,
) {
	response.Schema = schema.Schema{
		Attributes: map[string]schema.Attribute{
			"id": schema.StringAttribute{
				Computed: true,

				Description: "The unique numeric ID of the role.",
			},
			"name": schema.StringAttribute{

				Required:    true,
				Description: "The name of the role.",
			},
			"slug": schema.StringAttribute{

				Required:    true,
				Description: "A unique slug identifier for the role.",
			},
		},
	}
}

func (p *roleResource) Create(
	ctx context.Context,
	request resource.CreateRequest,
	response *resource.CreateResponse,
) {
	var state roleResourceModel
	diags := request.Plan.Get(ctx, &state)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}

	params := ipam.IpamRolesCreateParams{
		Data: &models.Role{
			Name: state.Name.ValueStringPointer(),
			Slug: state.Slug.ValueStringPointer(),
		},
		Context: ctx,
	}

	resp, err := p.client.Ipam.IpamRolesCreate(&params, nil)
	if err != nil {
		response.Diagnostics.AddError(
			"Error creating roles",
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

func (p *roleResource) Read(
	ctx context.Context,
	request resource.ReadRequest,
	response *resource.ReadResponse,
) {

	var state roleResourceModel
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

	params := &ipam.IpamRolesReadParams{
		ID:      id,
		Context: ctx,
	}

	resp, err := p.client.Ipam.IpamRolesRead(params, nil)
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

func (p *roleResource) Update(
	ctx context.Context,
	request resource.UpdateRequest,
	response *resource.UpdateResponse,
) {
	var state roleResourceModel
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

	params := &ipam.IpamRolesUpdateParams{
		Data: &models.Role{
			Name: state.Name.ValueStringPointer(),
			Slug: state.Slug.ValueStringPointer(),
		},
		ID:      id,
		Context: ctx,
	}

	resp, err := p.client.Ipam.IpamRolesUpdate(params, nil)
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

func (p *roleResource) Delete(
	ctx context.Context,
	request resource.DeleteRequest,
	response *resource.DeleteResponse,
) {
	var state roleResourceModel
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

	params := &ipam.IpamRolesDeleteParams{
		ID:      id,
		Context: ctx,
	}

	_, err = p.client.Ipam.IpamRolesDelete(params, nil)
	if err != nil {
		// TODO Check for 404 and return, since we don't want to fail on a 404
		response.Diagnostics.AddError(
			"Unable to delete site",
			err.Error(),
		)
		return
	}
}

func (p *roleResource) ImportState(
	ctx context.Context,
	request resource.ImportStateRequest,
	response *resource.ImportStateResponse,
) {
	resource.ImportStatePassthroughID(ctx, path.Root("id"), request, response)
}
