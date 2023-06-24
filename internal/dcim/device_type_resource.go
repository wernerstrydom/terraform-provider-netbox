package dcim

import (
	"context"
	"fmt"
	"strconv"

	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/boolplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/float64planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/int64planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/numberplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/netbox-community/go-netbox/v3/netbox/client"
	"github.com/netbox-community/go-netbox/v3/netbox/client/dcim"
	"github.com/netbox-community/go-netbox/v3/netbox/models"
)

// this is for code generation purposes, as to complicate the code generation
var (
	_ int64planmodifier.RequiresReplaceIfFunc   = nil
	_ stringplanmodifier.RequiresReplaceIfFunc  = nil
	_ boolplanmodifier.RequiresReplaceIfFunc    = nil
	_ float64planmodifier.RequiresReplaceIfFunc = nil
	_ numberplanmodifier.RequiresReplaceIfFunc  = nil
)

type deviceTypeResourceModel struct {
	ID             types.String  `tfsdk:"id"`
	Model          types.String  `tfsdk:"model"`
	PartNumber     types.String  `tfsdk:"part_number"`
	Slug           types.String  `tfsdk:"slug"`
	Description    types.String  `tfsdk:"description"`
	UHeight        types.Float64 `tfsdk:"u_height"`
	Weight         types.Float64 `tfsdk:"weight"`
	IsFullDepth    types.Bool    `tfsdk:"is_full_depth"`
	ManufacturerID types.Int64   `tfsdk:"manufacturer_id"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
	_ resource.Resource                = &deviceTypeResource{}
	_ resource.ResourceWithConfigure   = &deviceTypeResource{}
	_ resource.ResourceWithImportState = &deviceTypeResource{}
)

type deviceTypeResource struct {
	client *client.NetBoxAPI
}

// NewDeviceTypeResource is a helper function to simplify the provider implementation.
func NewDeviceTypeResource() resource.Resource {
	return &deviceTypeResource{}
}

func (p *deviceTypeResource) Configure(
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

func (p *deviceTypeResource) Metadata(
	_ context.Context,
	request resource.MetadataRequest,
	response *resource.MetadataResponse,
) {
	response.TypeName = request.ProviderTypeName + "_device_type"
}

func (p *deviceTypeResource) Schema(
	_ context.Context,
	_ resource.SchemaRequest,
	response *resource.SchemaResponse,
) {
	response.Schema = schema.Schema{
		Attributes: map[string]schema.Attribute{
			"id": schema.StringAttribute{
				Computed:    true,
				Optional:    true,
				Description: "The unique numeric ID of the device type.",
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
			},
			"model": schema.StringAttribute{

				Required:    true,
				Description: "The model name of the device type.",
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
			},
			"part_number": schema.StringAttribute{

				Optional:    true,
				Description: "The part number associated with the device type.",
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
			},
			"slug": schema.StringAttribute{

				Required:    true,
				Description: "A unique slug identifier for the device type.",
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
			},
			"description": schema.StringAttribute{

				Optional:    true,
				Description: "A brief description of the device type.",
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
			},
			"u_height": schema.Float64Attribute{

				Optional:    true,
				Description: "The height of the device type, in rack units.",
				PlanModifiers: []planmodifier.Float64{
					float64planmodifier.UseStateForUnknown(),
				},
			},
			"weight": schema.Float64Attribute{

				Optional:    true,
				Description: "The weight of the device type.",
				PlanModifiers: []planmodifier.Float64{
					float64planmodifier.UseStateForUnknown(),
				},
			},
			"is_full_depth": schema.BoolAttribute{

				Optional:    true,
				Description: "Indicates whether this device type consumes the full depth of its parent rack.",
				PlanModifiers: []planmodifier.Bool{
					boolplanmodifier.UseStateForUnknown(),
				},
			},
			"manufacturer_id": schema.Int64Attribute{
				Description: "The device type's manufacturer.",
				Optional:    true,
				PlanModifiers: []planmodifier.Int64{
					int64planmodifier.UseStateForUnknown(),
				},
			},
		},
	}
}

func (p *deviceTypeResource) Create(
	ctx context.Context,
	request resource.CreateRequest,
	response *resource.CreateResponse,
) {
	var state deviceTypeResourceModel
	diags := request.Plan.Get(ctx, &state)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}

	params := dcim.DcimDeviceTypesCreateParams{
		Data: &models.WritableDeviceType{
			Model:        state.Model.ValueStringPointer(),
			PartNumber:   state.PartNumber.ValueString(),
			Slug:         state.Slug.ValueStringPointer(),
			Description:  state.Description.ValueString(),
			UHeight:      state.UHeight.ValueFloat64Pointer(),
			Weight:       state.Weight.ValueFloat64Pointer(),
			IsFullDepth:  state.IsFullDepth.ValueBool(),
			Manufacturer: state.ManufacturerID.ValueInt64Pointer(),
		},
		Context: ctx,
	}

	resp, err := p.client.Dcim.DcimDeviceTypesCreate(&params, nil)
	if err != nil {
		response.Diagnostics.AddError(
			"Error creating deviceTypes",
			err.Error(),
		)
		return
	}

	payload := resp.Payload
	state.ID = types.StringValue(fmt.Sprintf("%d", payload.ID))

	var manufacturerID *int64
	if payload.Manufacturer == nil {
		manufacturerID = nil
	} else {
		manufacturerID = &payload.Manufacturer.ID
	}
	state.ManufacturerID = types.Int64PointerValue(manufacturerID)

	diags = response.State.Set(ctx, &state)
	response.Diagnostics.Append(diags...)

	if response.Diagnostics.HasError() {
		return
	}
}

func (p *deviceTypeResource) Read(
	ctx context.Context,
	request resource.ReadRequest,
	response *resource.ReadResponse,
) {

	var state deviceTypeResourceModel
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

	params := &dcim.DcimDeviceTypesReadParams{
		ID:      id,
		Context: ctx,
	}

	resp, err := p.client.Dcim.DcimDeviceTypesRead(params, nil)
	if err != nil {
		// TODO: Check for 404 and remove state if not found. We don't want to fail the plan if the resource is deleted outside of Terraform.
		response.Diagnostics.AddError(
			"Unable to read site",
			err.Error(),
		)
		return
	}

	payload := resp.Payload
	state.Model = types.StringPointerValue(payload.Model)
	state.PartNumber = types.StringValue(payload.PartNumber)
	state.Slug = types.StringPointerValue(payload.Slug)
	state.Description = types.StringValue(payload.Description)
	state.UHeight = types.Float64PointerValue(payload.UHeight)
	state.Weight = types.Float64PointerValue(payload.Weight)
	state.IsFullDepth = types.BoolValue(payload.IsFullDepth)

	var manufacturerID *int64
	if payload.Manufacturer == nil {
		manufacturerID = nil
	} else {
		manufacturerID = &payload.Manufacturer.ID
	}
	state.ManufacturerID = types.Int64PointerValue(manufacturerID)

	diags := response.State.Set(ctx, state)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}
}

func (p *deviceTypeResource) Update(
	ctx context.Context,
	request resource.UpdateRequest,
	response *resource.UpdateResponse,
) {
	var state deviceTypeResourceModel
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

	params := &dcim.DcimDeviceTypesUpdateParams{
		Data: &models.WritableDeviceType{
			Model:        state.Model.ValueStringPointer(),
			PartNumber:   state.PartNumber.ValueString(),
			Slug:         state.Slug.ValueStringPointer(),
			Description:  state.Description.ValueString(),
			UHeight:      state.UHeight.ValueFloat64Pointer(),
			Weight:       state.Weight.ValueFloat64Pointer(),
			IsFullDepth:  state.IsFullDepth.ValueBool(),
			Manufacturer: state.ManufacturerID.ValueInt64Pointer(),
		},
		ID:      id,
		Context: ctx,
	}

	resp, err := p.client.Dcim.DcimDeviceTypesUpdate(params, nil)
	if err != nil {
		response.Diagnostics.AddError(
			"Unable to update site",
			err.Error(),
		)
		return
	}

	payload := resp.Payload
	state.Model = types.StringPointerValue(payload.Model)
	state.PartNumber = types.StringValue(payload.PartNumber)
	state.Slug = types.StringPointerValue(payload.Slug)
	state.Description = types.StringValue(payload.Description)
	state.UHeight = types.Float64PointerValue(payload.UHeight)
	state.Weight = types.Float64PointerValue(payload.Weight)
	state.IsFullDepth = types.BoolValue(payload.IsFullDepth)

	var manufacturerID *int64
	if payload.Manufacturer == nil {
		manufacturerID = nil
	} else {
		manufacturerID = &payload.Manufacturer.ID
	}
	state.ManufacturerID = types.Int64PointerValue(manufacturerID)

	diags := response.State.Set(ctx, state)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}
}

func (p *deviceTypeResource) Delete(
	ctx context.Context,
	request resource.DeleteRequest,
	response *resource.DeleteResponse,
) {
	var state deviceTypeResourceModel
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

	params := &dcim.DcimDeviceTypesDeleteParams{
		ID:      id,
		Context: ctx,
	}

	_, err = p.client.Dcim.DcimDeviceTypesDelete(params, nil)
	if err != nil {
		// TODO Check for 404 and return, since we don't want to fail on a 404
		response.Diagnostics.AddError(
			"Unable to delete site",
			err.Error(),
		)
		return
	}
}

func (p *deviceTypeResource) ImportState(
	ctx context.Context,
	request resource.ImportStateRequest,
	response *resource.ImportStateResponse,
) {
	resource.ImportStatePassthroughID(ctx, path.Root("id"), request, response)
}
