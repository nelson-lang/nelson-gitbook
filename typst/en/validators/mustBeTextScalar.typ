#import "nelson_help.typ": *

= mustBeTextScalar <validators:mustBeTextScalar>

Checks that value is single piece of text or raise an error.

== Syntax

- #raw("mustBeTextScalar(var)");
- #raw("mustBeTextScalar(var, argPosition)");
- #raw("C++: void mustBeTextScalar(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: a scalar string array or row vector characters array.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeTextScalar]; that value is single piece of text or raise an error.


== Example

``````matlab
mustBeTextScalar('true')
mustBeTextScalar(["f", "ff"])
mustBeTextScalar("hello")
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isscalar>)[isscalar];, #nlink(<types:ischar>)[ischar];, #nlink(<types:isstring>)[isstring];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
