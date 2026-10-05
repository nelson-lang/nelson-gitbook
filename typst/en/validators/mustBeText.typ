#import "nelson_help.typ": *

= mustBeText <validators:mustBeText>

Checks that value is piece of text or raise an error.

== Syntax

- #raw("mustBeText(var)");
- #raw("mustBeText(var, argPosition)");
- #raw("C++: void mustBeText(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: a string array, a cell of strings, or row vector characters array.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeText]; that value is piece of text or raise an error.


== Example

``````matlab
mustBeText('true')
mustBeText(["f", "ff"])
mustBeText("hello")
``````


== See also

#nlink(<types:ischar>)[ischar];, #nlink(<types:isstring>)[isstring];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
