#import "nelson_help.typ": *

= mustBeLogicalScalar <validators:mustBeLogicalScalar>

Checks that value is logical scalar or raise an error.

== Syntax

- #raw("mustBeLogicalScalar(var)");
- #raw("mustBeLogicalScalar(var, argPosition)");
- #raw("C++: void mustBeLogicalScalar(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement islogical, isscalar methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeLogicalScalar]; checks that value is logical scalar or raise an error.


== Example

``````matlab
mustBeLogicalScalar(true)
mustBeLogicalScalar([])
mustBeLogicalScalar([true false])
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isscalar>)[isscalar];, #nlink(<types:islogical>)[islogical];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
