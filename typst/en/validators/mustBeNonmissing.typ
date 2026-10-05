#import "nelson_help.typ": *

= mustBeNonmissing <validators:mustBeNonmissing>

Checks that value is not missing.

== Syntax

- #raw("mustBeNonmissing(var)");
- #raw("mustBeNonmissing(var, argPosition)");
- #raw("C++: void mustBeNonmissing(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement ismissing method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNonmissing]; checks that value is not missing or raise an error.


== Example

``````matlab
mustBeNonmissing(1)
mustBeNonmissing([])
mustBeNonmissing(["hello" string(NaN)])

``````


== See also

#nlink(<data_analysis:ismissing>)[ismissing];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
