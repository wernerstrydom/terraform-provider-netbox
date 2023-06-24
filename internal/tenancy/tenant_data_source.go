package tenancy

import (
	"context"
	"fmt"
	"strconv"

	"github.com/hashicorp/terraform-plugin-framework/datasource"
	"github.com/hashicorp/terraform-plugin-framework/datasource/schema"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/netbox-community/go-netbox/v3/netbox/client"
	"github.com/netbox-community/go-netbox/v3/netbox/client/tenancy"
)

type tenantDataSourceModel struct {
	Description types.String `tfsdk:"description"`
	ID          types.String `tfsdk:"id"`
	Name        types.String `tfsdk:"name"`
	Slug        types.String `tfsdk:"slug"`
	GroupID     types.Int64  `tfsdk:"group_id"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
	_ datasource.DataSource              = &tenantDataSource{}
	_ datasource.DataSourceWithConfigure = &tenantDataSource{}
)

// tenantDataSource is the data source implementation.
type tenantDataSource struct {
	client *client.NetBoxAPI
}

// NewTenantDataSource is a helper function to simplify the provider implementation.
func NewTenantDataSource() datasource.DataSource {
	return &tenantDataSource{}
}

// Metadata returns the data source type name.
func (d *tenantDataSource) Metadata(
	_ context.Context,
	request datasource.MetadataRequest,
	response *datasource.MetadataResponse,
) {
	response.TypeName = request.ProviderTypeName + "_tenant"
}

func (d *tenantDataSource) Configure(
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

func (d *tenantDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
	response.Schema = schema.Schema{
		Attributes: map[string]schema.Attribute{
			"description": schema.StringAttribute{
				Computed:    true,
				Description: "A brief description of the tenant.",
			},
			"id": schema.StringAttribute{
				Required:    true,
				Description: "The unique numeric ID of the tenant.",
			},
			"name": schema.StringAttribute{
				Computed:    true,
				Description: "The name of the tenant.",
			},
			"slug": schema.StringAttribute{
				Computed:    true,
				Description: "A unique slug identifier for the tenant.",
			},
			"group_id": schema.Int64Attribute{
				Description: "The tenant group this tenant belongs to.",
				Computed:    true,
			},
		},
	}
}

func (d *tenantDataSource) Read(
	ctx context.Context,
	request datasource.ReadRequest,
	response *datasource.ReadResponse,
) {
	var state tenantDataSourceModel
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

	params := &tenancy.TenancyTenantsReadParams{
		ID:      id,
		Context: ctx,
	}

	resp, err := d.client.Tenancy.TenancyTenantsRead(params, nil)
	if err != nil {
		response.Diagnostics.AddError(
			"Unable to read site",
			err.Error(),
		)
		return
	}

	payload := resp.Payload
	state.Description = types.StringValue(payload.Description)
	state.Name = types.StringPointerValue(payload.Name)
	state.Slug = types.StringPointerValue(payload.Slug)

	var groupID *int64
	if payload.Group == nil {
		groupID = nil
	} else {
		groupID = &payload.Group.ID
	}
	state.GroupID = types.Int64PointerValue(groupID)

	diags := response.State.Set(ctx, state)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}
}
