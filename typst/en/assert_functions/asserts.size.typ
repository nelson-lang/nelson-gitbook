#import "nelson_help.typ": *

= asserts.size <assert_functions:asserts.size>

Check that a value has the expected dimensions.

== Syntax

- #raw("asserts.size(value, expectedSize)");
- #raw("[res, msg] = asserts.size(value, expectedSize)");

== Input argument

/ value: Value to test.
/ expectedSize: Numeric vector of nonnegative integer dimension lengths.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when size(value) matches expectedSize exactly.

 The expected size vector must have the same number of dimensions as value.


== Examples

Expected size

``````matlab
asserts.size(ones(2, 3), [2 3]);
``````

Capture a size failure

``````matlab
[res, msg] = asserts.size(ones(2, 3), [3 2]);
``````


== See also

#nlink(<assert_functions:asserts.rows>)[asserts.rows];, #nlink(<assert_functions:asserts.columns>)[asserts.columns];, #nlink(<assert_functions:asserts.ndims>)[asserts.ndims];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
