#import "nelson_help.typ": *

= asserts.length <assert_functions:asserts.length>

Check the length of a value.

== Syntax

- #raw("asserts.length(value, n)");
- #raw("[res, msg] = asserts.length(value, n)");

== Input argument

/ value: Value to test.
/ n: Expected nonnegative finite integer scalar length.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when the largest dimension length of value equals n.

 Invalid n raises an argument error immediately.


== Examples

Length three

``````matlab
asserts.length(ones(2, 3), 3);
``````

Capture a length failure

``````matlab
[res, msg] = asserts.length(ones(2, 3), 2);
``````


== See also

#nlink(<assert_functions:asserts.numel>)[asserts.numel];, #nlink(<assert_functions:asserts.size>)[asserts.size];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
