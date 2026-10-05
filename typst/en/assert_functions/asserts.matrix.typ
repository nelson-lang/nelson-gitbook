#import "nelson_help.typ": *

= asserts.matrix <assert_functions:asserts.matrix>

Check that a value is two-dimensional.

== Syntax

- #raw("asserts.matrix(value)");
- #raw("[res, msg] = asserts.matrix(value)");

== Input argument

/ value: Value to test.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when value is a two-dimensional array.

 Use asserts.squareMatrix for square matrix checks.


== Examples

Matrix value

``````matlab
asserts.matrix(ones(2, 2));
``````

Capture a non-matrix value

``````matlab
[res, msg] = asserts.matrix(ones(2, 2, 2));
``````


== See also

#nlink(<assert_functions:asserts.squareMatrix>)[asserts.squareMatrix];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
