
sources = $(wildcard *.go) $(wildcard internal/*.go) $(wildcard internal/dcim/*.go) $(wildcard internal/dcim/sites/*.go)

all: output/terraform-provider-netbox

output/terraform-provider-netbox: $(sources) Makefile go.mod
	go build -o output/terraform-provider-netbox .

clean:
	rm -rf output
	rm -rf examples
	rm -rf docs
	rm -rf internal