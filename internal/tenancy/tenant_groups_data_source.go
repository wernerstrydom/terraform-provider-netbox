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
type tenantGroupsDataSourceModel struct {
    IDs types.Set `tfsdk:"ids"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &tenantGroupsDataSource{}
    _ datasource.DataSourceWithConfigure = &tenantGroupsDataSource{}
)

// tenantGroupDataSource is the data source implementation.
type tenantGroupsDataSource struct {
    client *client.NetBoxAPI
}

// NewTenantGroupsDataSource is a helper function to simplify the provider implementation.
func NewTenantGroupsDataSource() datasource.DataSource {
    return &tenantGroupsDataSource{}
}

// Metadata returns the data source type name.
func (d *tenantGroupsDataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_tenant_groups"
}

func (d *tenantGroupsDataSource) Configure(
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

func (d *tenantGroupsDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "The IDs of the tenantGroup.",
            },
        },
    }
}

func (d *tenantGroupsDataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var diags diag.Diagnostics
    var state tenantGroupsDataSourceModel
    response.Diagnostics.Append(request.Config.Get(ctx, &state)...)

    if response.Diagnostics.HasError() {
        return
    }

    params := tenancy.TenancyTenantGroupsListParams{
        Context: ctx,
    }
    var tenantGroups []*models.TenantGroup

    output, err := d.client.Tenancy.TenancyTenantGroupsList(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to retrieve sites",
            fmt.Sprintf("Unable to retrieve sites: %s", err),
        )
        return
    }

    tenantGroups = append(tenantGroups, output.Payload.Results...)
    // TODO Handle Paging

    result := make([]attr.Value, len(tenantGroups))
    if len(tenantGroups) > 0 {
        for i, tenantGroup := range tenantGroups {
            result[i] = types.Int64Value(tenantGroup.ID)
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

