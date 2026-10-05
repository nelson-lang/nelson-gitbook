#import "nelson_help.typ": *

= asserts.real <assert_functions:asserts.real>

Check that a value is real.

== Syntax

- #raw("asserts.real(value)");
- #raw("[res, msg] = asserts.real(value)");

== Input argument

/ value: Value to test.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when value has no complex part.

 Diagnostics include the computed class and dimensions.


== Examples

Real value

``````matlab
asserts.real([1 2]);
``````

Capture a complex value

``````matlab
[res, msg] = asserts.real(1 + i);
``````


== See also

#nlink(<assert_functions:asserts.finite>)[asserts.finite];, #nlink(<assert_functions:asserts.nonNan>)[asserts.nonNan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
