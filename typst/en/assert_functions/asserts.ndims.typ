#import "nelson_help.typ": *

= asserts.ndims <assert_functions:asserts.ndims>

Check the number of dimensions.

== Syntax

- #raw("asserts.ndims(value, n)");
- #raw("[res, msg] = asserts.ndims(value, n)");

== Input argument

/ value: Value to test.
/ n: Expected nonnegative finite integer scalar dimension count.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when ndims(value) equals n.

 Invalid n raises an argument error immediately.


== Examples

Two dimensions

``````matlab
asserts.ndims(ones(2, 3), 2);
``````

Capture a dimension failure

``````matlab
[res, msg] = asserts.ndims(ones(2, 3, 2), 2);
``````


== See also

#nlink(<assert_functions:asserts.size>)[asserts.size];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
