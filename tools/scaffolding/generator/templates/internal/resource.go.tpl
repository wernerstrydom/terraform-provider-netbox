package {{ .ServicePackage }}

import (
	"context"
	"fmt"
    "strconv"
    {{- range (resourceImports .Resource) }}{{ if not (startsWith . "github.com")}}
    "{{ . }}"{{end}}{{end}}

	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
    "github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
    {{- range (resourceImports .Resource) }}{{ if (endsWith . "planmodifier")}}
    "{{ . }}"{{end}}{{end}}
    "github.com/hashicorp/terraform-plugin-framework/schema/validator"
    {{- range (resourceImports .Resource) }}{{ if (endsWith . "validator")}}
    "{{ . }}"{{end}}{{end}}
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/netbox-community/go-netbox/v3/netbox/client"
    "github.com/netbox-community/go-netbox/v3/netbox/client/{{ snakeCase .ServicePackage }}"
    "github.com/netbox-community/go-netbox/v3/netbox/models"
)


type {{ camelCase .Resource.Name }}ResourceModel struct {
{{ range $name, $attribute := .Resource.Attributes }}
    {{ pascalCase $attribute.Name }} types.{{ type $attribute }} `tfsdk:"{{ snakeCase $attribute.Name }}"`{{ end }}
{{- range $name, $association := .Resource.Associations }}
    {{ pascalCase $association.Name }}ID types.Int64 `tfsdk:"{{ snakeCase $association.Name }}_id"`{{ end }}
}

// Ensure the implementation satisfies the expected interfaces.
var (
    _ resource.Resource                = &{{ camelCase .Resource.Name }}Resource{}
    _ resource.ResourceWithConfigure   = &{{ camelCase .Resource.Name }}Resource{}
    _ resource.ResourceWithImportState = &{{ camelCase .Resource.Name }}Resource{}
)

type {{ camelCase .Resource.Name }}Resource struct {
    client *client.NetBoxAPI
}

// New{{ pascalCase .Resource.Name }}Resource is a helper function to simplify the provider implementation.
func New{{ pascalCase .Resource.Name }}Resource() resource.Resource {
    return &{{ camelCase .Resource.Name }}Resource{}
}

func (p *{{ camelCase .Resource.Name }}Resource) Configure(
    _ context.Context,
    request resource.ConfigureRequest,
    response *resource.ConfigureResponse,
) {
    if request.ProviderData == nil {
        return
    }

    c, ok := request.ProviderData.(*client.NetBoxAPI)
    if !ok {
        response.Diagnostics.AddError(
            "Unexpected Resource Configure Type",
            "The provider data was not of the expected type.",
        )
        return
    }

    p.client = c
}


func (p *{{ camelCase .Resource.Name }}Resource) Metadata(
    _ context.Context,
    request resource.MetadataRequest,
    response *resource.MetadataResponse,
) {
    response.TypeName = request.ProviderTypeName + "_{{ snakeCase .Resource.Name }}"
}

func (p *{{ camelCase .Resource.Name }}Resource) Schema(
    _ context.Context,
    _ resource.SchemaRequest,
    response *resource.SchemaResponse,
) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
        {{- range $name, $attribute := .Resource.Attributes }}
            "{{ $attribute.Name | snakeCase }}": {{ resourceSchema $attribute }}{{ end }}
        {{- range $name, $association := .Resource.Associations }}
            "{{ $association.Name | snakeCase }}_id": schema.Int64Attribute{
             Description: "{{ $association.Description }}",
             Optional: true,
             PlanModifiers: []planmodifier.Int64{
                 int64planmodifier.UseStateForUnknown(),
             },
             Validators: []validator.Int64{
                int64validator.AtLeast(1),
                },
            },{{ end }}
        },
    }
}

func (p *{{ camelCase .Resource.Name }}Resource) Create(
    ctx context.Context,
    request resource.CreateRequest,
    response *resource.CreateResponse,
) {
    var state {{ camelCase .Resource.Name }}ResourceModel
    diags := request.Plan.Get(ctx, &state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }

    params := {{ snakeCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}CreateParams{
        Data: &models.{{ .Resource.WriteableModel }}{
        {{- range $name, $attribute := .Resource.Attributes }}{{ if not $attribute.IsKey }}
            {{ pascalCase $attribute.Name }}: state.{{ pascalCase $attribute.Name }}.Value{{ type $attribute }}{{if $attribute.IsNullable }}Pointer{{end}}(),{{ end }}{{ end }}
        {{- range $name, $association := .Resource.Associations }}
            {{ pascalCase $association.Name }}: state.{{ pascalCase $association.Name }}ID.ValueInt64{{if $association.IsNullable }}Pointer{{end}}(),{{ end }}
        },
        Context: ctx,
    }

    resp, err := p.client.{{ pascalCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}Create(&params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Error creating {{ camelCase .Resource.Plural }}",
            err.Error(),
        )
        return
    }

    payload := resp.Payload
    {{- range $name, $attribute := .Resource.Attributes }}{{ if $attribute.IsKey }}
    state.{{ pascalCase $attribute.Name }} = types.{{ type $attribute }}Value(fmt.Sprintf("%d", payload.{{ pascalCase $attribute.Name }})){{ end }}{{ end }}

    {{ range $name, $association := .Resource.Associations }}
    var {{ camelCase $association.Name }}ID *int64
    if payload.{{ pascalCase $association.Name }} == nil {
        {{ camelCase $association.Name }}ID = nil
    } else {
        {{ camelCase $association.Name }}ID = &payload.{{ pascalCase $association.Name }}.ID
    }
    state.{{ pascalCase $association.Name }}ID = types.Int64PointerValue({{ camelCase $association.Name }}ID){{ end }}

    diags = response.State.Set(ctx, &state)
    response.Diagnostics.Append(diags...)

    if response.Diagnostics.HasError() {
        return
    }
}

func (p *{{ camelCase .Resource.Name }}Resource) Read(
    ctx context.Context,
    request resource.ReadRequest,
    response *resource.ReadResponse,
) {

    var state {{ camelCase .Resource.Name }}ResourceModel
    response.Diagnostics.Append(request.State.Get(ctx, &state)...)

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

    resp, err := p.client.{{ pascalCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}Read(params, nil)
    if err != nil {
        // TODO: Check for 404 and remove state if not found. We don't want to fail the plan if the resource is deleted outside of Terraform.
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
    state.{{ pascalCase $association.Name }}ID = types.Int64{{if $association.IsNullable }}Pointer{{end}}Value({{ camelCase $association.Name }}ID){{ end }}

    diags := response.State.Set(ctx, state)
    response.Diagnostics.Append(diags...)
    if response.Diagnostics.HasError() {
        return
    }
}

func (p *{{ camelCase .Resource.Name }}Resource) Update(
    ctx context.Context,
    request resource.UpdateRequest,
    response *resource.UpdateResponse,
) {
    var state {{ camelCase .Resource.Name }}ResourceModel
    response.Diagnostics.Append(request.State.Get(ctx, &state)...)

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

    params := &{{ snakeCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}UpdateParams{
        Data: &models.{{ .Resource.WriteableModel }}{
                      {{- range $name, $attribute := .Resource.Attributes }}{{ if not $attribute.IsKey }}
                          {{ pascalCase $attribute.Name }}: state.{{ pascalCase $attribute.Name }}.Value{{ type $attribute }}{{if $attribute.IsNullable }}Pointer{{end}}(),{{ end }}{{ end }}
                      {{- range $name, $association := .Resource.Associations }}
                          {{ pascalCase $association.Name }}: state.{{ pascalCase $association.Name }}ID.ValueInt64{{if $association.IsNullable }}Pointer{{end}}(),{{ end }}
                      },
        ID: id,
        Context: ctx,
    }

    resp, err := p.client.{{ pascalCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}Update(params, nil)
    if err != nil {
        response.Diagnostics.AddError(
            "Unable to update site",
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

func (p *{{ camelCase .Resource.Name }}Resource) Delete(
    ctx context.Context,
    request resource.DeleteRequest,
    response *resource.DeleteResponse,
) {
    var state {{ camelCase .Resource.Name }}ResourceModel
    response.Diagnostics.Append(request.State.Get(ctx, &state)...)

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

    params := &{{ snakeCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}DeleteParams{
        ID: id,
        Context: ctx,
    }

    _, err = p.client.{{ pascalCase .ServicePackage }}.{{ pascalCase .ServicePackage }}{{ pascalCase .Resource.Plural }}Delete(params, nil)
    if err != nil {
        // TODO Check for 404 and return, since we don't want to fail on a 404
        response.Diagnostics.AddError(
            "Unable to delete site",
            err.Error(),
        )
        return
    }
}

func (p *{{ camelCase .Resource.Name }}Resource) ImportState(
    ctx context.Context,
    request resource.ImportStateRequest,
    response *resource.ImportStateResponse,
) {
    resource.ImportStatePassthroughID(ctx, path.Root("id"), request, response)
}
