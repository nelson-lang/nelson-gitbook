#import "nelson_help.typ": *

= asserts.nonNan <assert_functions:asserts.nonNan>

Check that no numeric entry is NaN.

== Syntax

- #raw("asserts.nonNan(value)");
- #raw("[res, msg] = asserts.nonNan(value)");

== Input argument

/ value: Numeric or logical scalar or array.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when no entry is NaN.

 Infinite values are allowed by this assertion.


== Examples

No NaN values

``````matlab
asserts.nonNan([1 Inf]);
``````

Capture a NaN value

``````matlab
[res, msg] = asserts.nonNan([1 NaN]);
``````


== See also

#nlink(<assert_functions:asserts.finite>)[asserts.finite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
