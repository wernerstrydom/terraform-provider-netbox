#!/bin/sh

pushd scaffolding
go build -o ../output/scaffolding .
popd

pushd output
./scaffolding generate --output ..
popd

make
