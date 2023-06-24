package tenancy

import (
    "context"
    "fmt"

    "github.com/hashicorp/terraform-plugin-framework/attr"
    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/hashicorp/terraform-plugin-framework/diag"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/tenancy"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)

// do
type tenantsDataSourceModel struct {
    IDs types.Set `tfsdk:"ids"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &tenantsDataSource{}
    _ datasource.DataSourceWithConfigure = &tenantsDataSource{}
)

// tenantDataSource is the data source implementation.
type tenantsDataSource struct {
    client *client.NetBoxAPI
}

// NewTenantsDataSource is a helper function to simplify the provider implementation.
func NewTenantsDataSource() datasource.DataSource {
    return &tenantsDataSource{}
}

// Metadata returns the data source type name.
func (d *tenantsDataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_tenants"
}

func (d *tenantsDataSource) Configure(
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

func (d *tenantsDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "The IDs of the tenant.",
            },
        },
    }
}

func (d *tenantsDataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var diags diag.Diagnostics
    var state tenantsDataSourceModel
    response.Diagnostics.Append(request.Config.Get(ctx, &state)...)

    if response.Diagnostics.HasError() {
        return
    }

    params := tenancy.TenancyTenantsListParams{
        Context: ctx,
    }
    var tenants []*models.Tenant

    output, err := d.client.Tenancy.TenancyTenantsList(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to retrieve sites",
            fmt.Sprintf("Unable to retrieve sites: %s", err),
        )
        return
    }

    tenants = append(tenants, output.Payload.Results...)
    // TODO Handle Paging

    result := make([]attr.Value, len(tenants))
    if len(tenants) > 0 {
        for i, tenant := range tenants {
            result[i] = types.Int64Value(tenant.ID)
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

