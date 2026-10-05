#import "nelson_help.typ": *

= mustBeNonempty <validators:mustBeNonempty>

Checks that value is nonempty or raise an error.

== Syntax

- #raw("mustBeNonempty(var)");
- #raw("mustBeNonempty(var, argPosition)");
- #raw("C++: void mustBeNonempty(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isempty methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNonempty]; checks that value is not empty or raise an error.


== Example

``````matlab
mustBeNonempty(1)
mustBeNonempty([])
``````


== See also

#nlink(<types:isempty>)[isempty];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
