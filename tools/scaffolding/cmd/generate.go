package cmd

import (
    "path/filepath"

    "github.com/spf13/cobra"

    "terraform-provider-netbox/tools/scaffolding/generator"
)

// generateCmd represents the generate command
var generateCmd = &cobra.Command{
    Use: "generate",
    RunE: func(cmd *cobra.Command, args []string) error {
        outputPath, err := cmd.Flags().GetString("output")
        if err != nil {
            return err
        }

        outputPath, err = filepath.Abs(outputPath)
        if err != nil {
            return err
        }

        return generator.Generate(outputPath)
    },
}

func init() {
    rootCmd.AddCommand(generateCmd)

    generateCmd.Flags().StringP("output", "o", "generated", "output directory")
}
