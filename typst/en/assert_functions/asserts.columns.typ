#import "nelson_help.typ": *

= asserts.columns <assert_functions:asserts.columns>

Check the column count.

== Syntax

- #raw("asserts.columns(value, n)");
- #raw("[res, msg] = asserts.columns(value, n)");

== Input argument

/ value: Value to test.
/ n: Expected nonnegative finite integer scalar column count.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when size(value, 2) equals n.

 Invalid n raises an argument error immediately.


== Examples

Three columns

``````matlab
asserts.columns(ones(2, 3), 3);
``````

Capture a column-count failure

``````matlab
[res, msg] = asserts.columns(ones(2, 3), 2);
``````


== See also

#nlink(<assert_functions:asserts.rows>)[asserts.rows];, #nlink(<assert_functions:asserts.size>)[asserts.size];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
