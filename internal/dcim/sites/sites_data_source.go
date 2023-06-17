package sites

import (
    "context"
    "fmt"

    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/dcim"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)

type sitesDataSourceModel struct {
    IDs types.Set `tfsdk:"ids"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &sitesDataSource{}
    _ datasource.DataSourceWithConfigure = &sitesDataSource{}
)

// sitesDataSource is the data source implementation.
type sitesDataSource struct {
    client *client.NetBoxAPI
}

// NewSitesDataSource is a helper function to simplify the provider implementation.
func NewSitesDataSource() datasource.DataSource {
    return &sitesDataSource{}
}

// Metadata returns the data source type name.
func (d *sitesDataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_sites"
}

func (d *sitesDataSource) Configure(
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

func (d *sitesDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "The IDs of the sites.",
            },
        },
    }
}

func (d *sitesDataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var state sitesDataSourceModel
    response.Diagnostics.Append(request.Config.Get(ctx, &state)...)
    if response.Diagnostics.HasError() {
        return
    }

    param := dcim.NewDcimSitesListParams()
    var results []*models.Site
    output, err := d.client.Dcim.DcimSitesList(param, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to retrieve sites",
            fmt.Sprintf("Unable to retrieve sites: %s", err),
        )
        return
    }

    results = append(results, output.Payload.Results...)

    // TODO Paging

    response.Diagnostics.Append(expandSites(results, &state.IDs)...)
    if response.Diagnostics.HasError() {
        return
    }

    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}
