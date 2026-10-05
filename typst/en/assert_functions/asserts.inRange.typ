#import "nelson_help.typ": *

= asserts.inRange <assert_functions:asserts.inRange>

Check that every value is inside an inclusive range.

== Syntax

- #raw("asserts.inRange(value, minValue, maxValue)");
- #raw("[res, msg] = asserts.inRange(value, minValue, maxValue)");

== Input argument

/ value: Real numeric or logical scalar or array.
/ minValue: Inclusive lower bound. Scalar expansion is supported.
/ maxValue: Inclusive upper bound. Scalar expansion is supported.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when minValue \<\= value \<\= maxValue for every compared element.

 Bounds can be scalars or arrays with dimensions compatible with value.


== Examples

Inclusive range

``````matlab
asserts.inRange([1 2], 0, 3);
``````

Capture an out-of-range value

``````matlab
[res, msg] = asserts.inRange([1 4], 0, 3);
``````


== See also

#nlink(<assert_functions:asserts.greaterOrEqual>)[asserts.greaterOrEqual];, #nlink(<assert_functions:asserts.lessOrEqual>)[asserts.lessOrEqual];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
