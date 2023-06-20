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

type tenantGroupDataSourceModel struct {

    ID types.String `tfsdk:"id"`
    Name types.String `tfsdk:"name"`
    Slug types.String `tfsdk:"slug"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &tenantGroupDataSource{}
    _ datasource.DataSourceWithConfigure = &tenantGroupDataSource{}
)

// tenantGroupDataSource is the data source implementation.
type tenantGroupDataSource struct {
    client *client.NetBoxAPI
}

// NewTenantGroupDataSource is a helper function to simplify the provider implementation.
func NewTenantGroupDataSource() datasource.DataSource {
    return &tenantGroupDataSource{}
}

// Metadata returns the data source type name.
func (d *tenantGroupDataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_tenant_group"
}

func (d *tenantGroupDataSource) Configure(
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

func (d *tenantGroupDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "id": schema.StringAttribute{
                Required:    true,
                Description: "The unique numeric ID of the tenant group.",
            },
            "name": schema.StringAttribute{
                Computed:    true,
                Description: "The name of the tenant group.",
            },
            "slug": schema.StringAttribute{
                Computed:    true,
                Description: "A unique slug identifier for the tenant group.",
            },
        },
    }
}

func (d *tenantGroupDataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var state tenantGroupDataSourceModel
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

        params := &tenancy.TenancyTenantGroupsReadParams{
            ID: id,
            Context: ctx,
        }

    resp, err := d.client.Tenancy.TenancyTenantGroupsRead(params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to read site",
            err.Error(),
        )
        return
    }

    payload := resp.Payload
    state.Name = types.StringPointerValue(payload.Name)
    state.Slug = types.StringPointerValue(payload.Slug)

    


    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

