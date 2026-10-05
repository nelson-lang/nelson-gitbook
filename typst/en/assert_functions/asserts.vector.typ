#import "nelson_help.typ": *

= asserts.vector <assert_functions:asserts.vector>

Check that a value is a vector.

== Syntax

- #raw("asserts.vector(value)");
- #raw("[res, msg] = asserts.vector(value)");

== Input argument

/ value: Value to test.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when value is a row vector or a column vector.

 Diagnostics include the computed dimensions.


== Examples

Vector value

``````matlab
asserts.vector([1 2]);
``````

Capture a matrix value

``````matlab
[res, msg] = asserts.vector(ones(2, 2));
``````


== See also

#nlink(<assert_functions:asserts.rowVector>)[asserts.rowVector];, #nlink(<assert_functions:asserts.columnVector>)[asserts.columnVector];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
