#import "nelson_help.typ": *

= mustBeNumeric <validators:mustBeNumeric>

Checks that value is numeric or raise an error.

== Syntax

- #raw("mustBeNumeric(var)");
- #raw("mustBeNumeric(var, argPosition)");
- #raw("C++: void mustBeNumeric(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isnumeric method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNumeric]; checks that value is numeric or raise an error.

 Empty values are ignored.


== Example

``````matlab
mustBeNumeric(1)
mustBeNumeric([])
mustBeNumeric({1})
``````


== See also

#nlink(<types:isnumeric>)[isnumeric];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
