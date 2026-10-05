#import "nelson_help.typ": *

= mustBeVector <validators:mustBeVector>

Checks that value is vector or raise an error.

== Syntax

- #raw("mustBeVector(var)");
- #raw("mustBeVector(var, 'allow-all-empties')");
- #raw("mustBeVector(var, argPosition)");
- #raw("mustBeVector(var, 'allow-all-empties', argPosition)");
- #raw("C++: void mustBeVector(const ArrayOfVector& args, bool allowsAllEmpties, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isvector methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeVector]; checks that value is vector or raise an error.


== Example

``````matlab
mustBeVector(true)
mustBeVector([1 2])
mustBeVector([])
mustBeVector([], 'allows-all-empties')
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isvector>)[isvector];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
