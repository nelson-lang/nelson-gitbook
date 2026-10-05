#import "nelson_help.typ": *

= asserts.isequal <assert_functions:asserts.isequal>

Check that computed and expected values are equal.

== Syntax

- #raw("asserts.isequal(computed, expected)");
- #raw("asserts.isequal(computed, expected, message)");
- #raw("[res, msg] = asserts.isequal(computed, expected)");

== Input argument

/ computed: Computed value.
/ expected: Expected value.
/ message: Optional custom failure message.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

This is the method-style form of assert\_isequal.

 Failure diagnostics include class, dimensions and, for dense numeric or logical arrays of the same size, the first different index.


== Examples

Equal arrays

``````matlab
asserts.isequal([1 2], [1 2]);
``````

Capture a diagnostic

``````matlab
[res, msg] = asserts.isequal([1 2], [1 3]);
``````


== See also

#nlink(<assert_functions:assert_isapprox>)[assert\_isapprox];, #nlink(<assert_functions:asserts.notEqual>)[asserts.notEqual];, #nlink(<assert_functions:asserts.diff>)[asserts.diff];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
