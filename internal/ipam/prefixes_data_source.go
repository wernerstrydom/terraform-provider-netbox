package ipam

import (
    "context"
    "fmt"

    "github.com/hashicorp/terraform-plugin-framework/attr"
    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/hashicorp/terraform-plugin-framework/diag"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/ipam"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)

// do
type prefixesDataSourceModel struct {
    IDs types.Set `tfsdk:"ids"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &prefixesDataSource{}
    _ datasource.DataSourceWithConfigure = &prefixesDataSource{}
)

// prefixDataSource is the data source implementation.
type prefixesDataSource struct {
    client *client.NetBoxAPI
}

// NewPrefixesDataSource is a helper function to simplify the provider implementation.
func NewPrefixesDataSource() datasource.DataSource {
    return &prefixesDataSource{}
}

// Metadata returns the data source type name.
func (d *prefixesDataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_prefixes"
}

func (d *prefixesDataSource) Configure(
    _ context.Context,
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

func (d *prefixesDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "The IDs of the prefix.",
            },
        },
    }
}

func (d *prefixesDataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var diags diag.Diagnostics
    var state prefixesDataSourceModel
    response.Diagnostics.Append(request.Config.Get(ctx, &state)...)

    if response.Diagnostics.HasError() {
        return
    }

    params := ipam.IpamPrefixesListParams{
        Context: ctx,
    }
    var prefixes []*models.Prefix

    output, err := d.client.Ipam.IpamPrefixesList(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to retrieve sites",
            fmt.Sprintf("Unable to retrieve sites: %s", err),
        )
        return
    }

    prefixes = append(prefixes, output.Payload.Results...)
    // TODO Handle Paging

    result := make([]attr.Value, len(prefixes))
    if len(prefixes) > 0 {
        for i, prefix := range prefixes {
            result[i] = types.Int64Value(prefix.ID)
        }
    }
    state.IDs, diags = types.SetValue(types.Int64Type, result)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    diags = response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

