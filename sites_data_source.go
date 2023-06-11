package main

import (
	"context"
	"fmt"

	"github.com/hashicorp/terraform-plugin-framework/datasource"
	"github.com/hashicorp/terraform-plugin-framework/datasource/schema"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/netbox-community/go-netbox/v3/netbox/client"
)

var (
	_ datasource.DataSource              = (*sitesDataSource)(nil)
	_ datasource.DataSourceWithConfigure = (*sitesDataSource)(nil)
)

type sitesDataSourceModel struct {
	Sites []siteModel `tfsdk:"sites"`
}

type siteModel struct {
	ID          types.Int64  `tfsdk:"id"`
	Name        types.String `tfsdk:"name"`
	Comments    types.String `tfsdk:"comments"`
	Created     types.String `tfsdk:"created"`
	Description types.String `tfsdk:"description"`
	Display     types.String `tfsdk:"display"`
	Slug        types.String `tfsdk:"slug"`
	Status      types.String `tfsdk:"status"`
	TimeZone    types.String `tfsdk:"time_zone"`
	Tenant      types.Int64  `tfsdk:"tenant_id"`
}

type sitesDataSource struct {
	client *client.NetBoxAPI
}

func (s *sitesDataSource) Configure(
	ctx context.Context,
	request datasource.ConfigureRequest,
	response *datasource.ConfigureResponse,
) {
	req := request
	resp := response
	if req.ProviderData == nil {
		return
	}

	client, ok := req.ProviderData.(*client.NetBoxAPI)
	if !ok {
		resp.Diagnostics.AddError(
			"Unexpected Data Source Configure Type",
			fmt.Sprintf(
				"Expected *client.NetBoxAPI, got: %T. Please report this issue to the provider developers.",
				req.ProviderData,
			),
		)

		return
	}

	s.client = client
}

func (s *sitesDataSource) Metadata(
	ctx context.Context,
	request datasource.MetadataRequest,
	response *datasource.MetadataResponse,
) {
	response.TypeName = request.ProviderTypeName + "_sites"
}

func (s *sitesDataSource) Schema(
	ctx context.Context,
	request datasource.SchemaRequest,
	response *datasource.SchemaResponse,
) {
	response.Schema = schema.Schema{
		Attributes: map[string]schema.Attribute{
			"sites": schema.ListNestedAttribute{
				Computed: true,
				NestedObject: schema.NestedAttributeObject{
					Attributes: map[string]schema.Attribute{
						"id": schema.Int64Attribute{
							Computed: true,
						},
						"name": schema.StringAttribute{
							Computed: true,
						},
						"comments": schema.StringAttribute{
							Computed: true,
						},
						"created": schema.StringAttribute{
							Computed: true,
						},
						"description": schema.StringAttribute{
							Computed: true,
						},
						"display": schema.StringAttribute{
							Computed: true,
						},
						"slug": schema.StringAttribute{
							Computed: true,
						},
						"status": schema.StringAttribute{
							Computed: true,
						},
						"time_zone": schema.StringAttribute{
							Computed: true,
						},
						"tenant_id": schema.Int64Attribute{
							Computed: true,
						},
					},
				},
			},
		},
	}
}

func (s *sitesDataSource) Read(ctx context.Context, request datasource.ReadRequest, response *datasource.ReadResponse) {
	var state sitesDataSourceModel

	resp, err := s.client.Dcim.DcimSitesList(nil, nil)
	if err != nil {
		response.Diagnostics.AddError(
			"Unable to Read Sites",
			err.Error(),
		)
		return
	}

	for _, site := range resp.Payload.Results {

		var tenantId *int64
		if site.Tenant != nil {
			tenantId = &site.Tenant.ID
		}
		state.Sites = append(
			state.Sites, siteModel{
				ID:          types.Int64Value(site.ID),
				Name:        types.StringPointerValue(site.Name),
				Comments:    types.StringValue(site.Comments),
				Description: types.StringValue(site.Description),
				Display:     types.StringValue(site.Display),
				Slug:        types.StringPointerValue(site.Slug),
				Status:      types.StringPointerValue(site.Status.Value),
				TimeZone:    types.StringPointerValue(site.TimeZone),
				Tenant:      types.Int64PointerValue(tenantId),
			},
		)
	}

	diags := response.State.Set(ctx, &state)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}
}

func NewSitesDataSource() datasource.DataSource {
	return &sitesDataSource{}
}
