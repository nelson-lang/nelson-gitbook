#import "nelson_help.typ": *

= mustBeFloat <validators:mustBeFloat>

Checks that value is floating-point or raise an error.

== Syntax

- #raw("mustBeFloat(var)");
- #raw("mustBeFloat(var, argPosition)");
- #raw("C++: void mustBeFloat(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isfloat method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeFloat]; checks that value is floating-point (single or double) or raise an error.


== Example

``````matlab
mustBeFloat(true)
mustBeFloat([])
mustBeFloat(single([true false]))
``````


== See also

#nlink(<types:isfloat>)[isfloat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
