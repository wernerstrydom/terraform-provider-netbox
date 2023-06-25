package generator

import (
    "fmt"
    "testing"

    "gopkg.in/yaml.v3"
)

func TestAttributeList_Serialization(t *testing.T) {

    serialize := func(l AttributeList) []byte {
        data, err := yaml.Marshal(l)
        if err != nil {
            t.Fatal(err)
        }
        return data
    }

    deserialize := func(data []byte) AttributeList {
        var l AttributeList
        if err := yaml.Unmarshal(data, &l); err != nil {
            t.Fatal(err)
        }
        return l
    }

    tests := []struct {
        name string
        l    AttributeList
    }{
        {
            name: "empty",
            l:    AttributeList{},
        },
        {
            name: "single",
            l: AttributeList{
                &stringAttribute{
                    name: "foo",
                },
            },
        },
        {
            name: "multiple",
            l: AttributeList{
                &stringAttribute{
                    name: "foo",
                },
                &Int64Attribute{
                    name: "bar",
                },
                &BoolAttribute{
                    name: "baz",
                },
                &Float64Attribute{
                    name: "qux",
                },
            },
        },
    }
    for _, tt := range tests {
        t.Run(
            tt.name, func(t *testing.T) {
                actual := deserialize(serialize(tt.l))
                fmt.Println("Expected:")
                fmt.Println(tt.l.String())
                fmt.Println("Actual:")
                fmt.Println(actual.String())
                if len(actual) != len(tt.l) {
                    t.Fatalf("expected %d attributes, got %d", len(tt.l), len(actual))
                }
                for i, a := range actual {
                    e := tt.l[i]
                    if a.Name() != e.Name() {
                        t.Errorf("expected attribute %d to have name %q, got %q", i, e.Name(), a.Name())
                    }
                    if a.Type() != e.Type() {
                        t.Errorf("expected attribute %d to have type %q, got %q", i, e.Type(), a.Type())
                    }
                }
            },
        )
    }
}
