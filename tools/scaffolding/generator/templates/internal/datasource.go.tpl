package {{ snakeCase .ServicePackage }}

import (
    "context"
    "fmt"
    "strconv"

    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/{{ snakeCase .ServicePackage }}"
)

type {{ camelCase .Resource.Name }}DataSourceModel struct {
{{ range $name, $attribute := .Resource.Attributes }}
    {{ pascalCase $attribute.Name }} types.{{ type $attribute }} `tfsdk:"{{ snakeCase $attribute.Name }}"`{{ end }}
{{- range $name, $association := .Resource.Associations }}
    {{ pascalCase $association.Name }}ID types.Int64 `tfsdk:"{{ snakeCase $association.Name }}_id"`{{ end }}
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &{{ camelCase .Resource.Name }}DataSource{}
    _ datasource.DataSourceWithConfigure = &{{ camelCase .Resource.Name }}DataSource{}
)

// {{ camelCase .Resource.Name }}DataSource is the data source implementation.
type {{ camelCase .Resource.Name }}DataSource struct {
    client *client.NetBoxAPI
}

// New{{ pascalCase .Resource.Name }}DataSource is a helper function to simplify the provider implementation.
func New{{ pascalCase .Resource.Name }}DataSource() datasource.DataSource {
    return &{{ camelCase .Resource.Name }}DataSource{}
}

// Metadata returns the data source type name.
func (d *{{ camelCase .Resource.Name }}DataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_{{ snakeCase .Resource.Name }}"
}

func (d *{{ camelCase .Resource.Name }}DataSource) Configure(
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

func (d *{{ camelCase .Resource.Name }}DataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
        {{- range $name, $attribute := .Resource.Attributes }}
            "{{ snakeCase $attribute.Name }}": schema.{{ type $attribute }}Attribute{
                {{ if eq $attribute.Name "ID" }}Required:    true,{{else}}Computed:    true,{{ end }}
                Description: "{{ $attribute.Description }}",
            },{{ end }}
        {{- range $name, $association := .Resource.Associations }}
            "{{ snakeCase $association.Name }}_id": schema.Int64Attribute{
             Description: "{{ $association.Description }}",
             Computed: true,
            },{{ end }}
        },
    }
}

func (d *{{ camelCase .Resource.Name }}DataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var state {{ camelCase .Resource.Name }}DataSourceModel
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

        params := &{{ snakeCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}ReadParams{
            ID: id,
            Context: ctx,
        }

    resp, err := d.client.{{ pascalCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}Read(params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to read site",
            err.Error(),
        )
        return
    }

    payload := resp.Payload
    {{- range $name, $attribute := .Resource.Attributes }}{{ if not $attribute.IsKey }}
    state.{{ pascalCase $attribute.Name }} = types.{{ type $attribute }}{{if $attribute.IsNullable }}Pointer{{end}}Value(payload.{{ pascalCase $attribute.Name }}){{ end }}{{ end }}

    {{ range $name, $association := .Resource.Associations }}
    var {{ camelCase $association.Name }}ID *int64
    if payload.{{ pascalCase $association.Name }} == nil {
        {{ camelCase $association.Name }}ID = nil
    } else {
        {{ camelCase $association.Name }}ID = &payload.{{ pascalCase $association.Name }}.ID
    }
    state.{{ pascalCase $association.Name }}ID = types.Int64PointerValue({{ camelCase $association.Name }}ID)
    {{ end }}


    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

