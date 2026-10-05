#import "nelson_help.typ": *

= asserts.rows <assert_functions:asserts.rows>

Check the row count.

== Syntax

- #raw("asserts.rows(value, n)");
- #raw("[res, msg] = asserts.rows(value, n)");

== Input argument

/ value: Value to test.
/ n: Expected nonnegative finite integer scalar row count.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when size(value, 1) equals n.

 Invalid n raises an argument error immediately.


== Examples

Two rows

``````matlab
asserts.rows(ones(2, 3), 2);
``````

Capture a row-count failure

``````matlab
[res, msg] = asserts.rows(ones(2, 3), 3);
``````


== See also

#nlink(<assert_functions:asserts.columns>)[asserts.columns];, #nlink(<assert_functions:asserts.size>)[asserts.size];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
