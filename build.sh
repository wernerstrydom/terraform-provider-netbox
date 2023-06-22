#!/bin/sh

pushd scaffolding
go build -o ../output/scaffolding .
popd

pushd output
./scaffolding generate --output ..
popd

go run github.com/hashicorp/terraform-plugin-docs/cmd/tfplugindocs

terraform fmt -recursive ./examples/

make
