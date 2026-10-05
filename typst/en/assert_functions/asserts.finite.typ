#import "nelson_help.typ": *

= asserts.finite <assert_functions:asserts.finite>

Check that every numeric entry is finite.

== Syntax

- #raw("asserts.finite(value)");
- #raw("[res, msg] = asserts.finite(value)");

== Input argument

/ value: Numeric or logical scalar or array.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when every entry is finite.

 NaN, Inf and -Inf fail this assertion.


== Examples

Finite values

``````matlab
asserts.finite([1 2 3]);
``````

Capture an infinite value

``````matlab
[res, msg] = asserts.finite([1 Inf]);
``````


== See also

#nlink(<assert_functions:asserts.nonNan>)[asserts.nonNan];, #nlink(<assert_functions:asserts.real>)[asserts.real];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
