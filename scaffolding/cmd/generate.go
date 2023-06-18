package cmd

import (
    "github.com/spf13/cobra"

    "terraform-provider-netbox/scaffolding/generator"
)

// generateCmd represents the generate command
var generateCmd = &cobra.Command{
    Use: "generate",
    Run: func(cmd *cobra.Command, args []string) {
        generator.Generate()
    },
}

func init() {
    rootCmd.AddCommand(generateCmd)
}
