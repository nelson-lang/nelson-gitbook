#import "nelson_help.typ": *

= underlyingType <types:underlyingType>

Underlying type of an array.

== Syntax

- #raw("t = underlyingType(X)");

== Input argument

/ X: input array.

== Output argument

/ t: name of the underlying class of X, as a character vector.

== Description

#strong[underlyingType]; returns the name of the underlying class of X. For ordinary arrays this is the same as class(X); for an enumeration built on a fundamental type it returns that fundamental type.


== Example

``````matlab
underlyingType(int32(5))
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<validators:mustBeUnderlyingType>)[mustBeUnderlyingType];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
