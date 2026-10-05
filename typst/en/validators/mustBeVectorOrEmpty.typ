#import "nelson_help.typ": *

= mustBeVectorOrEmpty <validators:mustBeVectorOrEmpty>

Checks that value is a vector or empty, or raise an error.

== Syntax

- #raw("mustBeVectorOrEmpty(var)");
- #raw("mustBeVectorOrEmpty(var, argPosition)");
- #raw("C++: void mustBeVectorOrEmpty(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isvector and isempty methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeVectorOrEmpty]; checks that value is a vector or empty, or raise an error.


== Example

``````matlab
mustBeVectorOrEmpty([1 2])
mustBeVectorOrEmpty(zeros(0, 3))
mustBeVectorOrEmpty(ones(2))
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isvector>)[isvector];, #nlink(<types:isempty>)[isempty];, #nlink(<validators:mustBeVector>)[mustBeVector];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
