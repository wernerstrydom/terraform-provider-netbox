package main

import (
    "context"
    "flag"
    "log"

    "github.com/hashicorp/terraform-plugin-framework/providerserver"

    "terraform-provider-netbox/internal/provider"
)

// Formats terraform files
//go:generate terraform fmt -recursive ./examples/

// Generates documentation for the provider
//go:generate go run github.com/hashicorp/terraform-plugin-docs/cmd/tfplugindocs

var (
    version string = "dev"
)

func main() {
    var debug bool

    flag.BoolVar(&debug, "debug", false, "set to true to run the provider with support for debuggers like delve")
    flag.Parse()

    opts := providerserver.ServeOpts{
        Address: "registry.terraform.io/wernerstrydom/netbox",
        Debug:   debug,
    }

    err := providerserver.Serve(context.Background(), provider.New(version), opts)

    if err != nil {
        log.Fatal(err.Error())
    }
}
