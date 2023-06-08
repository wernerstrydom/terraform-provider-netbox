package main

import (
    "context"
    "net/url"
    "os"

    "github.com/hashicorp/terraform-plugin-framework/datasource"
    "github.com/hashicorp/terraform-plugin-framework/path"
    "github.com/hashicorp/terraform-plugin-framework/provider"
    "github.com/hashicorp/terraform-plugin-framework/provider/schema"
    "github.com/hashicorp/terraform-plugin-framework/resource"
    "github.com/hashicorp/terraform-plugin-framework/types"

    "github.com/netbox-community/go-netbox/v3/netbox"
)

var (
    _ provider.Provider = &netboxProvider{}
)

func New(version string) func() provider.Provider {
    return func() provider.Provider {
        return &netboxProvider{
            version: version,
        }
    }
}

type netboxProviderModel struct {
    ServerURL types.String `tfsdk:"server_url"`
    Token     types.String `tfsdk:"api_token"`
}

type netboxProvider struct {
    version string
}

func (n *netboxProvider) Metadata(
    ctx context.Context,
    request provider.MetadataRequest,
    response *provider.MetadataResponse,
) {
    response.TypeName = "netbox"
    response.Version = n.version
}

func (n *netboxProvider) Schema(
    ctx context.Context,
    request provider.SchemaRequest,
    response *provider.SchemaResponse,
) {
    response.Schema = schema.Schema{
        Attributes: map[string]schema.Attribute{
            "server_url": schema.StringAttribute{
                Optional: true,
            },
            "api_token": schema.StringAttribute{
                Optional:  true,
                Sensitive: true,
            },
        },
    }
}

func (n *netboxProvider) Configure(
    ctx context.Context,
    request provider.ConfigureRequest,
    response *provider.ConfigureResponse,
) {
    req := request
    resp := response

    var config netboxProviderModel
    diags := req.Config.Get(ctx, &config)
    resp.Diagnostics.Append(diags...)
    if resp.Diagnostics.HasError() {
        return
    }

    if config.ServerURL.IsUnknown() {
        resp.Diagnostics.AddAttributeError(
            path.Root("server_url"),
            "Unknown Netbox API Server URL",
            "The provider cannot create the Netbox API client as there is an unknown configuration value for the Netbox API serverUrl. "+
                "Either target apply the source of the value first, set the value statically in the configuration, or use the NETBOX_HOST environment variable.",
        )
    }

    if config.Token.IsUnknown() {
        resp.Diagnostics.AddAttributeError(
            path.Root("api_token"),
            "Unknown Netbox API Token",
            "The provider cannot create the Netbox API client as there is an unknown configuration value for the Netbox API token. "+
                "Either target apply the source of the value first, set the value statically in the configuration, or use the NETBOX_PASSWORD environment variable.",
        )
    }

    if resp.Diagnostics.HasError() {
        return
    }

    serverUrl := os.Getenv("NETBOX_SERVER_URL")
    token := os.Getenv("NETBOX_API_TOKEN")

    if !config.ServerURL.IsNull() {
        serverUrl = config.ServerURL.ValueString()
    }

    if !config.Token.IsNull() {
        token = config.Token.ValueString()
    }

    // If any of the expected configurations are missing, return
    // errors with provider-specific guidance.

    if serverUrl == "" {
        resp.Diagnostics.AddAttributeError(
            path.Root("serverUrl"),
            "Missing Netbox API ServerURL",
            "The provider cannot create the Netbox API client as there is a missing or empty value for the Netbox API serverUrl. "+
                "Set the serverUrl value in the configuration or use the NETBOX_SERVER_URL environment variable. "+
                "If either is already set, ensure the value is not empty.",
        )
    }

    if token == "" {
        resp.Diagnostics.AddAttributeError(
            path.Root("token"),
            "Missing Netbox API Token",
            "The provider cannot create the Netbox API client as there is a missing or empty value for the Netbox API token. "+
                "Set the token value in the configuration or use the NETBOX_API_TOKEN environment variable. "+
                "If either is already set, ensure the value is not empty.",
        )
    }

    u, err := url.Parse(serverUrl)
    if err != nil {
        resp.Diagnostics.AddError(
            "Invalid Netbox API ServerURL",
            "The provider cannot create the Netbox API client as the Netbox API serverUrl is invalid. "+
                "Set the serverUrl value in the configuration or use the NETBOX_SERVER_URL environment variable. "+
                "If either is already set, ensure the value is not empty.",
        )
    }

    if resp.Diagnostics.HasError() {
        return
    }

    client := netbox.NewNetboxWithAPIKey(u.Host, token)

    resp.DataSourceData = client
    resp.ResourceData = client
}

func (n *netboxProvider) DataSources(ctx context.Context) []func() datasource.DataSource {
    return []func() datasource.DataSource{
        NewSitesDataSource,
    }
}

func (n *netboxProvider) Resources(ctx context.Context) []func() resource.Resource {
    return []func() resource.Resource{

    }
}
