#import "nelson_help.typ": *

= mustBeNonpositive <validators:mustBeNonpositive>

Checks that value is non positive or raise an error.

== Syntax

- #raw("mustBeNonpositive(var)");
- #raw("mustBeNonpositive(var, argPosition)");
- #raw("C++: void mustBeNonpositive(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and le methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNonpositive]; checks that value is non positive or raise an error.


== Example

``````matlab
mustBeNonpositive(-1)
mustBeNonpositive(1)
``````


== See also

#nlink(<validators:mustBeNonnegative>)[mustBeNonnegative];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
