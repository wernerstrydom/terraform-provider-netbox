
sources = $(wildcard *.go)

all: output/terraform-provider-netbox


output/terraform-provider-netbox: $(sources) Makefile go.mod
	go build -o output/terraform-provider-netbox .