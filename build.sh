#!/bin/sh

pushd tools/scaffolding
go build -o ../../output/scaffolding .
popd

pushd tools/seed
go build -o ../../output/seed .
popd

pushd output
./scaffolding generate --output ..
./seed --output ..
popd

go run github.com/hashicorp/terraform-plugin-docs/cmd/tfplugindocs

terraform fmt -recursive ./examples/

make
