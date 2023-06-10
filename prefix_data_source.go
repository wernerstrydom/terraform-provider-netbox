package main

import (
    "context"
    "fmt"

    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/ipam"
)

// coffeesModel maps coffees schema data.
type prefixModel struct {
    Comments     types.String `tfsdk:"comments"`
    Description  types.String `tfsdk:"description"`
    Display      types.String `tfsdk:"display"`
    Family       types.String `tfsdk:"family"`
    ID           types.Int64  `tfsdk:"id"`
    IsPool       types.Bool   `tfsdk:"is_pool"`
    MarkUtilized types.Bool   `tfsdk:"mark_utilized"`
    Prefix       types.String `tfsdk:"prefix"`
    Status       types.String `tfsdk:"status"`
    Role         types.Int64  `tfsdk:"role_id"`
    Site         types.Int64  `tfsdk:"site_id"`
    Tenant       types.Int64  `tfsdk:"tenant_id"`
    Vlan         types.Int64  `tfsdk:"vlan_id"`
    Vrf          types.Int64  `tfsdk:"vrf_id"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &prefixDataSource{}
    _ datasource.DataSourceWithConfigure = &prefixDataSource{}
)

// NewPrefixDataSource is a helper function to simplify the provider implementation.
func NewPrefixDataSource() datasource.DataSource {
    return &prefixDataSource{}
}

// prefixDataSource is the data source implementation.
type prefixDataSource struct {
    client *client.NetBoxAPI
}

func (d *prefixDataSource) Configure(
    ctx context.Context,
    request datasource.ConfigureRequest,
    response *datasource.ConfigureResponse,
) {
    if request.ProviderData == nil {
        return
    }

    client, ok := request.ProviderData.(*client.NetBoxAPI)
    if !ok {
        response.Diagnostics.AddError(
            "Unexpected Data Source Configure Type",
            fmt.Sprintf(
                "Expected **client.NetBoxAPI, got: %T. Please report this issue to the provider developers.",
                request.ProviderData,
            ),
        )

        return
    }

    d.client = client
}

// Metadata returns the data source type name.
func (d *prefixDataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_prefix"
}

// Schema defines the schema for the data source.
func (d *prefixDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "comments": schema.StringAttribute{
                Optional: true,
                Computed: true,
            },
            "description": schema.StringAttribute{
                Optional: true,
                Computed: true,
            },
            "display": schema.StringAttribute{
                Optional: true,
                Computed: true,
            },
            "family": schema.StringAttribute{
                Optional: true,
                Computed: true,
            },
            "id": schema.Int64Attribute{
                Optional: true,
                Computed: true,
            },
            "is_pool": schema.BoolAttribute{
                Optional: true,
                Computed: true,
            },
            "mark_utilized": schema.BoolAttribute{
                Optional: true,
                Computed: true,
            },
            "prefix": schema.StringAttribute{
                Optional: true,
                Computed: true,
            },
            "role_id": schema.Int64Attribute{
                Optional: true,
                Computed: true,
            },
            "site_id": schema.Int64Attribute{
                Optional: true,
                Computed: true,
            },
            "status": schema.StringAttribute{
                Optional: true,
                Computed: true,
            },
            "tenant_id": schema.Int64Attribute{
                Optional: true,
                Computed: true,
            },
            "vlan_id": schema.Int64Attribute{
                Optional: true,
                Computed: true,
            },
            "vrf_id": schema.Int64Attribute{
                Optional: true,
                Computed: true,
            },
        },
    }
}

// Read refreshes the Terraform state with the latest data.
func (d *prefixDataSource) Read(ctx context.Context, req datasource.ReadRequest, resp *datasource.ReadResponse) {
    var state prefixModel

    params := ipam.NewIpamPrefixesReadParams().WithID(197)

    output, err := d.client.Ipam.IpamPrefixesRead(params, nil)
    if err != nil {
        resp.Diagnostics.AddError(
            "Unable to read prefix",
            fmt.Sprintf("Unable to read prefix: %s", err),
        )

        return
    }

    state.Comments = types.StringValue(output.Payload.Comments)
    state.Description = types.StringValue(output.Payload.Description)
    state.Display = types.StringValue(output.Payload.Display)
    state.ID = types.Int64Value(output.Payload.ID)
    state.IsPool = types.BoolValue(output.Payload.IsPool)
    state.MarkUtilized = types.BoolValue(output.Payload.MarkUtilized)
    state.Prefix = types.StringPointerValue(output.Payload.Prefix)
    if output.Payload.Role != nil {
        state.Role = types.Int64Value(output.Payload.Role.ID)
    }

    if output.Payload.Site != nil {
        state.Site = types.Int64Value(output.Payload.Site.ID)
    }

    if output.Payload.Status != nil {
        state.Status = types.StringPointerValue(output.Payload.Status.Value)
    }

    if output.Payload.Tenant != nil {
        state.Tenant = types.Int64Value(output.Payload.Tenant.ID)
    }
    if output.Payload.Vlan != nil {
        state.Vlan = types.Int64Value(output.Payload.Vlan.ID)
    }
    if output.Payload.Vrf != nil {
        state.Vrf = types.Int64Value(output.Payload.Vrf.ID)
    }

    if output.Payload.Family != nil {
        state.Family = types.StringPointerValue(output.Payload.Family.Label)
    }

    diags := resp.State.Set(ctx, state)
    resp.Diagnostics.Append(diags...)
    if resp.Diagnostics.HasError() {
        return
    }
}
