#!/bin/sh

goreleaser --skip-sign --snapshot --clean --skip-publish

terraform fmt -recursive ./examples/

make
