package {{ lower .Package }}

import (
    "context"
    "fmt"

    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/datasource/schema"
    "github.com/hashicorp/terraform-plugin-framework/types"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/{{ lower .Package }}"
)

type {{ lower .Name }}DataSourceModel struct {
{{ range .Attributes }}
    {{ .Name }} {{ if .IsArray }}[]{{end}}types.{{ tftype .Type }} `tfsdk:"{{ .Tag }}"`
{{- end }}
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ datasource.DataSource              = &{{ lower .Name }}DataSource{}
    _ datasource.DataSourceWithConfigure = &{{ lower .Name }}DataSource{}
)

// New{{ .Name }}DataSource is a helper function to simplify the provider implementation.
func New{{ .Name }}DataSource() datasource.DataSource {
    return &{{ lower .Name }}DataSource{}
}

// {{ lower .Name }}DataSource is the data source implementation.
type {{ lower .Name }}DataSource struct {
    client *client.NetBoxAPI
}

func (d *{{ lower .Name }}DataSource) Configure(
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
func (d *{{ lower .Name }}DataSource) Metadata(
    _ context.Context,
    request datasource.MetadataRequest,
    response *datasource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_{{ lower .Name }}"
}

// Schema defines the schema for the data source.
func (d *{{ lower .Name }}DataSource) Schema(_ context.Context, _ datasource.SchemaRequest, response *datasource.SchemaResponse) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
{{ range .Attributes }}
            "{{ .Tag }}": schema.{{ tftype .Type }}Attribute{
    {{- if eq .Name "ID" }}
                Required: true,
    {{- else }}
                Computed: true,
    {{- end }}
            },
{{- end }}

        },
    }
}

// Read refreshes the Terraform state with the latest data.
func (d *{{ lower .Name }}DataSource) Read(
    ctx context.Context,
    request datasource.ReadRequest,
    response *datasource.ReadResponse,
) {
    var state {{ lower .Name }}DataSourceModel
    response.Diagnostics.Append(request.Config.Get(ctx, &state)...)
    if response.Diagnostics.HasError() {
        return
    }

    err := d.read(ctx, &state)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to read prefix",
            fmt.Sprintf("Unable to read prefix: %s", err),
        )

        return
    }

    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}
