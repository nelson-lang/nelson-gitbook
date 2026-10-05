#import "nelson_help.typ": *

= mustBeLogical <validators:mustBeLogical>

Checks that value is logical or raise an error.

== Syntax

- #raw("mustBeLogical(var)");
- #raw("mustBeLogical(var, argPosition)");
- #raw("C++: void mustBeLogical(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement islogical and isempty methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeLogical]; checks that value is logical or raise an error.

 Empty values are ignored.


== Example

``````matlab
mustBeLogical(true)
mustBeLogical([])
mustBeLogical([true false])
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
