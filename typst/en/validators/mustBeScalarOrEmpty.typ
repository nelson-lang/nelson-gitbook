#import "nelson_help.typ": *

= mustBeScalarOrEmpty <validators:mustBeScalarOrEmpty>

Checks that value is scalar or empty or raise an error.

== Syntax

- #raw("mustBeScalarOrEmpty(var)");
- #raw("mustBeScalarOrEmpty(var, argPosition)");
- #raw("C++: void mustBeScalarOrEmpty(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isscalar and isempty methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeScalarOrEmpty]; checks that value is scalar or empty or raise an error.


== Example

``````matlab
mustBeScalarOrEmpty(true)
mustBeScalarOrEmpty([])
mustBeScalarOrEmpty([true false])
  
``````


== See also

#nlink(<types:isempty>)[isempty];, #nlink(<types:islogical>)[islogical];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
