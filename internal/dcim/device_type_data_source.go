package dcim

import (
	"context"
	"fmt"
	"strconv"

	"github.com/hashicorp/terraform-plugin-framework/datasource"
	"github.com/hashicorp/terraform-plugin-framework/datasource/schema"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/netbox-community/go-netbox/v3/netbox/client"
	"github.com/netbox-community/go-netbox/v3/netbox/client/dcim"
)

type deviceTypeDataSourceModel struct {
	Description    types.String `tfsdk:"description"`
	ID             types.String `tfsdk:"id"`
	Model          types.String `tfsdk:"model"`
	PartNumber     types.String `tfsdk:"part_number"`
	Slug           types.String `tfsdk:"slug"`
	ManufacturerID types.Int64  `tfsdk:"manufacturer_id"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
	_ datasource.DataSource              = &deviceTypeDataSource{}
	_ datasource.DataSourceWithConfigure = &deviceTypeDataSource{}
)

// deviceTypeDataSource is the data source implementation.
type deviceTypeDataSource struct {
	client *client.NetBoxAPI
}

// NewDeviceTypeDataSource is a helper function to simplify the provider implementation.
func NewDeviceTypeDataSource() datasource.DataSource {
	return &deviceTypeDataSource{}
}

// Metadata returns the data source type name.
func (d *deviceTypeDataSource) Metadata(
	_ context.Context,
	request datasource.MetadataRequest,
	response *datasource.MetadataResponse,
) {
	response.TypeName = request.ProviderTypeName + "_device_type"
}

func (d *deviceTypeDataSource) Configure(
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

func (d *deviceTypeDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
	response.Schema = schema.Schema{
		Attributes: map[string]schema.Attribute{
			"description": schema.StringAttribute{
				Computed:    true,
				Description: "A brief description of the device type.",
			},
			"id": schema.StringAttribute{
				Required:    true,
				Description: "The unique numeric ID of the device type.",
			},
			"model": schema.StringAttribute{
				Computed:    true,
				Description: "The model name of the device type.",
			},
			"part_number": schema.StringAttribute{
				Computed:    true,
				Description: "The part number associated with the device type.",
			},
			"slug": schema.StringAttribute{
				Computed:    true,
				Description: "A unique slug identifier for the device type.",
			},
			"manufacturer_id": schema.Int64Attribute{
				Description: "The device type's manufacturer.",
				Computed:    true,
			},
		},
	}
}

func (d *deviceTypeDataSource) Read(
	ctx context.Context,
	request datasource.ReadRequest,
	response *datasource.ReadResponse,
) {
	var state deviceTypeDataSourceModel
	response.Diagnostics.Append(request.Config.Get(ctx, &state)...)

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

	resp, err := d.client.Dcim.DcimDeviceTypesRead(params, nil)
	if err != nil {
		response.Diagnostics.AddError(
			"Unable to read site",
			err.Error(),
		)
		return
	}

	payload := resp.Payload
	state.Description = types.StringValue(payload.Description)
	state.Model = types.StringPointerValue(payload.Model)
	state.PartNumber = types.StringValue(payload.PartNumber)
	state.Slug = types.StringPointerValue(payload.Slug)

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
