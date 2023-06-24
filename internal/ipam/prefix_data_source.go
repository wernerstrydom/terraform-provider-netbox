package ipam

import (
    "context"
    "fmt"
    "strconv"

    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/ipam"
)

type prefixDataSourceModel struct {

    Description types.String `tfsdk:"description"`
    ID types.String `tfsdk:"id"`
    Prefix types.String `tfsdk:"prefix"`
    RoleID types.Int64 `tfsdk:"role_id"`
    SiteID types.Int64 `tfsdk:"site_id"`
    TenantID types.Int64 `tfsdk:"tenant_id"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &prefixDataSource{}
    _ datasource.DataSourceWithConfigure = &prefixDataSource{}
)

// prefixDataSource is the data source implementation.
type prefixDataSource struct {
    client *client.NetBoxAPI
}

// NewPrefixDataSource is a helper function to simplify the provider implementation.
func NewPrefixDataSource() datasource.DataSource {
    return &prefixDataSource{}
}

// Metadata returns the data source type name.
func (d *prefixDataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_prefix"
}

func (d *prefixDataSource) Configure(
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

func (d *prefixDataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "description": schema.StringAttribute{
                Computed:    true,
                Description: "A brief description of the prefix.",
            },
            "id": schema.StringAttribute{
                Required:    true,
                Description: "The unique numeric ID of the prefix.",
            },
            "prefix": schema.StringAttribute{
                Computed:    true,
                Description: "The prefix address in CIDR notation.",
            },
            "role_id": schema.Int64Attribute{
             Description: "The role to which this prefix is assigned.",
             Computed: true,
            },
            "site_id": schema.Int64Attribute{
             Description: "The site to which this prefix is assigned.",
             Computed: true,
            },
            "tenant_id": schema.Int64Attribute{
             Description: "The tenant to which this prefix is assigned.",
             Computed: true,
            },
        },
    }
}

func (d *prefixDataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var state prefixDataSourceModel
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

        params := &ipam.IpamPrefixesReadParams{
            ID: id,
            Context: ctx,
        }

    resp, err := d.client.Ipam.IpamPrefixesRead(params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to read site",
            err.Error(),
        )
        return
    }

    payload := resp.Payload
    state.Description = types.StringValue(payload.Description)
    state.Prefix = types.StringPointerValue(payload.Prefix)

    
    var roleID *int64
    if payload.Role == nil {
        roleID = nil
    } else {
        roleID = &payload.Role.ID
    }
    state.RoleID = types.Int64PointerValue(roleID)
    
    var siteID *int64
    if payload.Site == nil {
        siteID = nil
    } else {
        siteID = &payload.Site.ID
    }
    state.SiteID = types.Int64PointerValue(siteID)
    
    var tenantID *int64
    if payload.Tenant == nil {
        tenantID = nil
    } else {
        tenantID = &payload.Tenant.ID
    }
    state.TenantID = types.Int64PointerValue(tenantID)
    


    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

