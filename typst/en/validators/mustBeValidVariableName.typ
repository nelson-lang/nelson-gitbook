#import "nelson_help.typ": *

= mustBeValidVariableName <validators:mustBeValidVariableName>

Checks that value is valid variable name or raise an error.

== Syntax

- #raw("mustBeValidVariableName(var)");
- #raw("mustBeValidVariableName(var, argPosition)");
- #raw("C++: void mustBeValidVariableName(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: string or characters array.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeValidVariableName]; checks that value is valid variable name or raise an error.


== Example

``````matlab
mustBeValidVariableName('8t')
mustBeValidVariableName('t8')
mustBeValidVariableName("t8")
``````


== See also

#nlink(<types:isvarname>)[isvarname];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
