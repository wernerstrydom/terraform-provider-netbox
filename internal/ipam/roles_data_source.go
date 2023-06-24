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
type rolesDataSourceModel struct {
    IDs types.Set `tfsdk:"ids"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &rolesDataSource{}
    _ datasource.DataSourceWithConfigure = &rolesDataSource{}
)

// roleDataSource is the data source implementation.
type rolesDataSource struct {
    client *client.NetBoxAPI
}

// NewRolesDataSource is a helper function to simplify the provider implementation.
func NewRolesDataSource() datasource.DataSource {
    return &rolesDataSource{}
}

// Metadata returns the data source type name.
func (d *rolesDataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_roles"
}

func (d *rolesDataSource) Configure(
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

func (d *rolesDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "The IDs of the role.",
            },
        },
    }
}

func (d *rolesDataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var diags diag.Diagnostics
    var state rolesDataSourceModel
    response.Diagnostics.Append(request.Config.Get(ctx, &state)...)

    if response.Diagnostics.HasError() {
        return
    }

    params := ipam.IpamRolesListParams{
        Context: ctx,
    }
    var roles []*models.Role

    output, err := d.client.Ipam.IpamRolesList(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to retrieve sites",
            fmt.Sprintf("Unable to retrieve sites: %s", err),
        )
        return
    }

    roles = append(roles, output.Payload.Results...)
    // TODO Handle Paging

    result := make([]attr.Value, len(roles))
    if len(roles) > 0 {
        for i, role := range roles {
            result[i] = types.Int64Value(role.ID)
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

