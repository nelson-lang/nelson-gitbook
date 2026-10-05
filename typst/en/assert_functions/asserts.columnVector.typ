#import "nelson_help.typ": *

= asserts.columnVector <assert_functions:asserts.columnVector>

Check that a value is a column vector.

== Syntax

- #raw("asserts.columnVector(value)");
- #raw("[res, msg] = asserts.columnVector(value)");

== Input argument

/ value: Value to test.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when value has column-vector shape.

 Diagnostics report the computed class and dimensions.


== Examples

Column vector

``````matlab
asserts.columnVector([1; 2]);
``````

Capture a shape failure

``````matlab
[res, msg] = asserts.columnVector([1 2]);
``````


== See also

#nlink(<assert_functions:asserts.rowVector>)[asserts.rowVector];, #nlink(<assert_functions:asserts.vector>)[asserts.vector];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
