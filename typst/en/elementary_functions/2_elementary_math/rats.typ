#import "../nelson_help.typ": *

= rats <elementary_functions:2_elementary_math.rats>

Rational output.

== Syntax

- #raw("S = rats(X)");
- #raw("S = rats(X, len)");

== Input argument

/ X: Input array: real or complex, scalar, vector or matrix (single or double).
/ len: Field width: scalar. The default is #strong[13];.

== Output argument

/ S: Character array of rational approximations.

== Description

#strong[S \= rats(X)]; uses #strong[rat]; to display rational approximations to the elements of #strong[X]; in a fixed width field.

 The string length for each element is #strong[len + 1]; to account for the slash #strong['\/']; character inserted between the numerator and the denominator. Asterisks are used for elements which can not be printed in the allotted space.


== Example

``````matlab
S = rats(1 ./ (1:5))
``````


== See also

#nlink(<elementary_functions:2_elementary_math.rat>)[rat];, #nlink(<display_format:format>)[format];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
