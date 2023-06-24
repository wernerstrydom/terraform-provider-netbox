package generator

type Attribute interface {
    Name() string
    Description() string
    Value() string
    Type() AttributeType
    IsReadOnly() bool
    MaxLength() int
    MinLength() int
    Pattern() string
    IsKey() bool
    IsNullable() bool
    DefaultValue() any
    IsRequired() bool
}
