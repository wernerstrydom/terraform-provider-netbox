package main

import (
    "context"
    "fmt"

    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/ipam"
)

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
                // Optional: true,
                Computed: true,
            },
            "description": schema.StringAttribute{
                // Optional: true,
                Computed: true,
            },
            "display": schema.StringAttribute{
                // Optional: true,
                Computed: true,
            },
            "family": schema.StringAttribute{
                // Optional: true,
                Computed: true,
            },
            "id": schema.StringAttribute{
                Optional: true,
                Computed: true,
            },
            "is_pool": schema.BoolAttribute{
                // Optional: true,
                Computed: true,
            },
            "mark_utilized": schema.BoolAttribute{
                // Optional: true,
                Computed: true,
            },
            "prefix": schema.StringAttribute{
                // Optional: true,
                Computed: true,
            },
            "role_id": schema.Int64Attribute{
                // Optional: true,
                Computed: true,
            },
            "site_id": schema.Int64Attribute{
                // Optional: true,
                Computed: true,
            },
            "status": schema.StringAttribute{
                // Optional: true,
                Computed: true,
            },
            "tenant_id": schema.Int64Attribute{
                // Optional: true,
                Computed: true,
            },
            "vlan_id": schema.Int64Attribute{
                // Optional: true,
                Computed: true,
            },
            "vrf_id": schema.Int64Attribute{
                // Optional: true,
                Computed: true,
            },
        },
    }
}

// Read refreshes the Terraform state with the latest data.
func (d *prefixDataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var state prefixModel
    response.Diagnostics.Append(request.Config.Get(ctx, &state)...)

    idString := state.ID.String()
    if idString == "" {
        response.Diagnostics.AddError(
            "Unable to read prefix",
            fmt.Sprintf("Unable to read prefix: %s", "ID is empty"),
        )

        return
    }

    var id int64
    _, err := fmt.Sscanf(idString, "%d", &id)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to read prefix",
            fmt.Sprintf("Unable to parse id: %s", err),
        )

        return
    }

    params := ipam.NewIpamPrefixesReadParams().WithID(id)

    output, err := d.client.Ipam.IpamPrefixesRead(params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to read prefix",
            fmt.Sprintf("Unable to read prefix: %s", err),
        )

        return
    }

    state.Update(ctx, output.Payload)

    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}
