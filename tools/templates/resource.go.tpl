package {{ .Package }}

import (
    "context"

    "github.com/hashicorp/terraform-plugin-framework/path"
    "github.com/hashicorp/terraform-plugin-framework/resource"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema"
    "github.com/netbox-community/go-netbox/v3/netbox/client"
)

type {{ lower .Name }}ResourceModel struct {
{{ range .Attributes }}
    {{ .Name }} {{ if .IsArray }}[]{{end}}{{ if .IsNullable }}*{{end}}{{ .Type }} `tfsdk:"{{ .Tag }}"`
{{- end }}
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ resource.Resource                = &{{ lower .Name }}Resource{}
    _ resource.ResourceWithConfigure   = &{{ lower .Name }}Resource{}
    _ resource.ResourceWithImportState = &{{ lower .Name }}Resource{}
)

// New{{ .Name }}Resource is a helper function to simplify the provider implementation.
func New{{ .Name }}Resource() resource.Resource {
    return &{{ lower .Name }}Resource{}
}

// {{ lower .Name }}Resource is the resource implementation.
type {{ lower .Name }}Resource struct {
    client *client.NetBoxAPI
}

func (p *{{ lower .Name }}Resource) Configure(
    ctx context.Context,
    request resource.ConfigureRequest,
    response *resource.ConfigureResponse,
) {
    if request.ProviderData == nil {
        return
    }

    client, ok := request.ProviderData.(*client.NetBoxAPI)
    if !ok {
        response.Diagnostics.AddError(
            "Unexpected Resource Configure Type",
            "The provider data was not of the expected type.",
        )
        return
    }

    p.client = client
}

func (p *{{ lower .Name }}Resource) Metadata(
    ctx context.Context,
    request resource.MetadataRequest,
    response *resource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_{{ lower .Name }}"
}

func (p *{{ lower .Name }}Resource) Schema(
    ctx context.Context,
    request resource.SchemaRequest,
    response *resource.SchemaResponse,
) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
        },
    }
}

func (p *{{ lower .Name }}Resource) Create(
    ctx context.Context,
    request resource.CreateRequest,
    response *resource.CreateResponse,
) {

    var plan {{ lower .Name }}ResourceModel
    diags := request.Plan.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    // TODO: Create the resource here

    diags = response.State.Set(ctx, &plan)
    response.Diagnostics.Append(diags...)

    if response.Diagnostics.HasError() {
        return
    }
}

func (p *{{ lower .Name }}Resource) Read(ctx context.Context, request resource.ReadRequest, response *resource.ReadResponse) {
    var plan {{ lower .Name }}ResourceModel
    diags := request.State.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    // TODO: Read the resource here

    diags = response.State.Set(ctx, &plan)
    response.Diagnostics.Append(diags...)

    if response.Diagnostics.HasError() {
        return
    }
}

func (p *{{ lower .Name }}Resource) Update(
    ctx context.Context,
    request resource.UpdateRequest,
    response *resource.UpdateResponse,
) {
    var plan {{ lower .Name }}ResourceModel
    diags := request.Plan.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    // TODO: Update the resource here

    diags = response.State.Set(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

func (p *{{ lower .Name }}Resource) Delete(
    ctx context.Context,
    request resource.DeleteRequest,
    response *resource.DeleteResponse,
) {
    var plan {{ lower .Name }}ResourceModel
    diags := request.State.Get(ctx, &plan)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    // TODO: Delete the resource here
}

func (p *{{ lower .Name }}Resource) ImportState(
    ctx context.Context,
    request resource.ImportStateRequest,
    response *resource.ImportStateResponse,
) {
    resource.ImportStatePassthroughID(ctx, path.Root("id"), request, response)
}
