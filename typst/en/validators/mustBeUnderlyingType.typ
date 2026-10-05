#import "nelson_help.typ": *

= mustBeUnderlyingType <validators:mustBeUnderlyingType>

Validate that value has a specified underlying type.

== Syntax

- #raw("mustBeUnderlyingType(A, typename)");

== Input argument

/ A: value to validate.
/ typename: text scalar naming the required underlying type.

== Output argument

/ none: this validation function returns no value.

== Description

#strong[mustBeUnderlyingType]; throws an error if the underlying type of A (as returned by underlyingType) is not equal to typename. This function does not return a value.


== Example

``````matlab
mustBeUnderlyingType(int32(5), 'int32')
``````


== See also

#nlink(<validators:mustBeA>)[mustBeA];, #nlink(<types:underlyingType>)[underlyingType];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
