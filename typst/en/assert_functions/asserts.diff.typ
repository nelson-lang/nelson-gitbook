#import "nelson_help.typ": *

= asserts.diff <assert_functions:asserts.diff>

Return equality diagnostics without throwing.

== Syntax

- #raw("msg = asserts.diff(computed, expected)");
- #raw("[res, msg] = asserts.diff(computed, expected)");

== Input argument

/ computed: Computed value.
/ expected: Expected value.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

This is a diagnostic helper, not a failing assertion.

 It returns the same style of message as asserts.isequal for comparison failures.


== Examples

Inspect a difference

``````matlab
msg = asserts.diff([1 2], [1 3]);
``````

Check equality status

``````matlab
[res, msg] = asserts.diff([1 2], [1 2]);
``````


== See also

#nlink(<assert_functions:asserts.isequal>)[asserts.isequal];, #nlink(<assert_functions:asserts.isapprox>)[asserts.isapprox];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
