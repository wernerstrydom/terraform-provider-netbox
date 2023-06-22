package provider

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
	"github.com/hashicorp/terraform-plugin-log/tflog"

	"github.com/netbox-community/go-netbox/v3/netbox"

	"terraform-provider-netbox/internal/dcim"
	"terraform-provider-netbox/internal/ipam"
	"terraform-provider-netbox/internal/tenancy"
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
	tflog.Info(ctx, "Configuring HashiCups client")

	var config netboxProviderModel
	diags := request.Config.Get(ctx, &config)
	response.Diagnostics.Append(diags...)
	if response.Diagnostics.HasError() {
		return
	}

	if config.ServerURL.IsUnknown() {
		response.Diagnostics.AddAttributeError(
			path.Root("server_url"),
			"Unknown Netbox API Server URL",
			"The provider cannot create the Netbox API client as there is an unknown configuration value for the Netbox API serverUrl. "+
				"Either target apply the source of the value first, set the value statically in the configuration, or use the NETBOX_HOST environment variable.",
		)
	}

	if config.Token.IsUnknown() {
		response.Diagnostics.AddAttributeError(
			path.Root("api_token"),
			"Unknown Netbox API Token",
			"The provider cannot create the Netbox API client as there is an unknown configuration value for the Netbox API token. "+
				"Either target apply the source of the value first, set the value statically in the configuration, or use the NETBOX_PASSWORD environment variable.",
		)
	}

	if response.Diagnostics.HasError() {
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
		response.Diagnostics.AddAttributeError(
			path.Root("serverUrl"),
			"Missing Netbox API ServerURL",
			"The provider cannot create the Netbox API client as there is a missing or empty value for the Netbox API serverUrl. "+
				"Set the serverUrl value in the configuration or use the NETBOX_SERVER_URL environment variable. "+
				"If either is already set, ensure the value is not empty.",
		)
	}

	if token == "" {
		response.Diagnostics.AddAttributeError(
			path.Root("token"),
			"Missing Netbox API Token",
			"The provider cannot create the Netbox API client as there is a missing or empty value for the Netbox API token. "+
				"Set the token value in the configuration or use the NETBOX_API_TOKEN environment variable. "+
				"If either is already set, ensure the value is not empty.",
		)
	}

	u, err := url.Parse(serverUrl)
	if err != nil {
		response.Diagnostics.AddError(
			"Invalid Netbox API ServerURL",
			"The provider cannot create the Netbox API client as the Netbox API serverUrl is invalid. "+
				"Set the serverUrl value in the configuration or use the NETBOX_SERVER_URL environment variable. "+
				"If either is already set, ensure the value is not empty.",
		)
	}

	if response.Diagnostics.HasError() {
		return
	}

	ctx = tflog.SetField(ctx, "netbox_url", serverUrl)
	ctx = tflog.SetField(ctx, "netbox_token", token)
	ctx = tflog.MaskFieldValuesWithFieldKeys(ctx, "netbox_token")
	tflog.Debug(ctx, "Creating Netbox client")

	client := netbox.NewNetboxWithAPIKey(u.Host, token)

	response.DataSourceData = client
	response.ResourceData = client

	tflog.Info(ctx, "Configured Netbox client", map[string]any{"success": true})
}

func (n *netboxProvider) DataSources(_ context.Context) []func() datasource.DataSource {
	return []func() datasource.DataSource{

		dcim.NewDeviceTypeDataSource,
		dcim.NewDeviceTypesDataSource,
		dcim.NewManufacturerDataSource,
		dcim.NewManufacturersDataSource,
		dcim.NewSiteDataSource,
		dcim.NewSitesDataSource,

		ipam.NewPrefixDataSource,
		ipam.NewPrefixesDataSource,
		ipam.NewRoleDataSource,
		ipam.NewRolesDataSource,

		tenancy.NewTenantDataSource,
		tenancy.NewTenantsDataSource,
		tenancy.NewTenantGroupDataSource,
		tenancy.NewTenantGroupsDataSource,
	}
}

func (n *netboxProvider) Resources(_ context.Context) []func() resource.Resource {
	return []func() resource.Resource{

		dcim.NewDeviceTypeResource,
		dcim.NewManufacturerResource,
		dcim.NewSiteResource,

		ipam.NewPrefixResource,
		ipam.NewRoleResource,

		tenancy.NewTenantResource,
		tenancy.NewTenantGroupResource,
	}
}
