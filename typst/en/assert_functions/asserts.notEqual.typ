#import "nelson_help.typ": *

= asserts.notEqual <assert_functions:asserts.notEqual>

Check that two values are not equal.

== Syntax

- #raw("asserts.notEqual(computed, expected)");
- #raw("[res, msg] = asserts.notEqual(computed, expected)");

== Input argument

/ computed: Computed value.
/ expected: Value that must not be equal to computed.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when asserts.isequal would fail.

 It is useful for negative equality checks in tests.


== Examples

Different values

``````matlab
asserts.notEqual(1, 2);
``````

Capture an equality failure

``````matlab
[res, msg] = asserts.notEqual(1, 1);
``````


== See also

#nlink(<assert_functions:asserts.isequal>)[asserts.isequal];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
