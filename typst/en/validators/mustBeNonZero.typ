#import "nelson_help.typ": *

= mustBeNonZero <validators:mustBeNonZero>

Checks that value is not zero.

== Syntax

- #raw("mustBeNonZero(var)");
- #raw("mustBeNonZero(var, argPosition)");
- #raw("C++: void mustBeNonZero(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement eq, isnumeric and islogical methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNonZero]; checks that value is not zero or raise an error.


== Example

``````matlab
mustBeNonZero(1)
mustBeNonZero([])
mustBeNonZero(NaN)
mustBeNonZero(0)

``````


== See also

#nlink(<types:isempty>)[isempty];, #nlink(<operators:eq>)[eq];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
