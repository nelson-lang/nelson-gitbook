#import "nelson_help.typ": *

= mustBeLessThanOrEqual <validators:mustBeLessThanOrEqual>

Checks that value is less than or equal to another value or issue error.

== Syntax

- #raw("mustBeLessThanOrEqual(var, c)");
- #raw("mustBeLessThanOrEqual(var, c, argPosition)");
- #raw("C++: void mustBeLessThanOrEqual(const ArrayOfVector& args, const ArrayOf &c, int argPosition)");

== Input argument

/ var: a variable: array of any type supporting the comparison operator (numeric, logical, char, string, ...). An empty value is always accepted.
/ c: a variable: scalar or array with a size compatible with var (implicit expansion).
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeLessThanOrEqual]; checks that value is less than or equal to another value or issue error.


== Examples

``````matlab
mustBeLessThanOrEqual(1, 0)
mustBeLessThanOrEqual([2 3 4],2)
``````

Compare with an array of compatible size

``````matlab
upper = [1; 2];
mustBeLessThanOrEqual([0 1; 2 2], upper)
mustBeLessThanOrEqual([0 1; 2 3], upper)
``````


== See also

#nlink(<validators:mustBeNumeric>)[mustBeNumeric];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [c can be an array with a size compatible with var; inputs are no longer restricted to real numeric or logical values.],
)

// Author: Allan CORNET
