#import "nelson_help.typ": *

= mustBeNonzeroLengthText <validators:mustBeNonzeroLengthText>

Checks that value is text with nonzero length or raise an error.

== Syntax

- #raw("mustBeNonzeroLengthText(var)");
- #raw("mustBeNonzeroLengthText(var, argPosition)");
- #raw("C++: void mustBeNonzeroLengthText(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: a string array, a cell of strings, or row vector characters array.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNonzeroLengthText]; checks that value is text with nonzero length or raise an error.


== Example

``````matlab
mustBeNonzeroLengthText('true')
mustBeNonzeroLengthText("hello")
mustBeNonzeroLengthText('')
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
