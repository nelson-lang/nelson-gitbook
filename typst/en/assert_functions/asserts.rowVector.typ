#import "nelson_help.typ": *

= asserts.rowVector <assert_functions:asserts.rowVector>

Check that a value is a row vector.

== Syntax

- #raw("asserts.rowVector(value)");
- #raw("[res, msg] = asserts.rowVector(value)");

== Input argument

/ value: Value to test.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when value has row-vector shape.

 Diagnostics report the computed class and dimensions.


== Examples

Row vector

``````matlab
asserts.rowVector([1 2]);
``````

Capture a shape failure

``````matlab
[res, msg] = asserts.rowVector([1; 2]);
``````


== See also

#nlink(<assert_functions:asserts.columnVector>)[asserts.columnVector];, #nlink(<assert_functions:asserts.vector>)[asserts.vector];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
