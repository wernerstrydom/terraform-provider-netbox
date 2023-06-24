package {{ snakeCase .ServicePackage }}

import (
    "context"
    "fmt"

    "github.com/hashicorp/terraform-plugin-framework/attr"
    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/hashicorp/terraform-plugin-framework/diag"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/{{ snakeCase .ServicePackage }}"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)

// do
type {{ camelCase .Resource.Plural }}DataSourceModel struct {
    IDs types.Set `tfsdk:"ids"`
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &{{ camelCase .Resource.Plural }}DataSource{}
    _ datasource.DataSourceWithConfigure = &{{ camelCase .Resource.Plural }}DataSource{}
)

// {{ camelCase .Resource.Name }}DataSource is the data source implementation.
type {{ camelCase .Resource.Plural }}DataSource struct {
    client *client.NetBoxAPI
}

// New{{ pascalCase .Resource.Plural }}DataSource is a helper function to simplify the provider implementation.
func New{{ pascalCase .Resource.Plural }}DataSource() datasource.DataSource {
    return &{{ camelCase .Resource.Plural }}DataSource{}
}

// Metadata returns the data source type name.
func (d *{{ camelCase .Resource.Plural }}DataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_{{ snakeCase .Resource.Plural }}"
}

func (d *{{ camelCase .Resource.Plural }}DataSource) Configure(
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

func (d *{{ camelCase .Resource.Plural }}DataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "ids": schema.SetAttribute{
                Computed:    true,
                ElementType: types.Int64Type,
                Description: "The IDs of the {{ camelCase .Resource.Name }}.",
            },
        },
    }
}

func (d *{{ camelCase .Resource.Plural }}DataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var diags diag.Diagnostics
    var state {{ camelCase .Resource.Plural }}DataSourceModel
    response.Diagnostics.Append(request.Config.Get(ctx, &state)...)

    if response.Diagnostics.HasError() {
        return
    }

    params := {{ snakeCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}ListParams{
        Context: ctx,
    }
    var {{ camelCase .Resource.Plural }} []*models.{{ pascalCase .Resource.Name }}

    output, err := d.client.{{ pascalCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}List(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to retrieve sites",
            fmt.Sprintf("Unable to retrieve sites: %s", err),
        )
        return
    }

    {{ camelCase .Resource.Plural }} = append({{ camelCase .Resource.Plural }}, output.Payload.Results...)
    // TODO Handle Paging

    result := make([]attr.Value, len({{ camelCase .Resource.Plural }}))
    if len({{ camelCase .Resource.Plural }}) > 0 {
        for i, {{ camelCase .Resource.Name }} := range {{ camelCase .Resource.Plural }} {
            result[i] = types.Int64Value({{ camelCase .Resource.Name }}.ID)
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

