#import "nelson_help.typ": *

= mustBeReal <validators:mustBeReal>

Checks that value is real.

== Syntax

- #raw("mustBeReal(var)");
- #raw("mustBeReal(var, argPosition)");
- #raw("C++: void mustBeReal(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isreal method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeReal]; checks that value is real or raise an error.


== Example

``````matlab
mustBeReal(1)
mustBeReal(i)

``````


== See also

#nlink(<types:isreal>)[isreal];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
