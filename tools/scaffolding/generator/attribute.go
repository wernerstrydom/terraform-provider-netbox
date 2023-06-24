package generator

type Attribute interface {
	Name() string
	Description() string
	Type() AttributeType
	IsReadOnly() bool
	IsKey() bool
	IsNullable() bool
	IsRequired() bool
}
