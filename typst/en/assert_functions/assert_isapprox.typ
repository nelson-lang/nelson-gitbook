#import "nelson_help.typ": *

= assert\_isapprox <assert_functions:assert_isapprox>

Historical name for asserts.isapprox.

== Syntax

- #raw("assert_isapprox(computed, expected)");
- #raw("assert_isapprox(computed, expected, precision)");
- #raw("assert_isapprox(computed, expected, precision, absolute_tolerance)");
- #raw("assert_isapprox(computed, expected, message)");
- #raw("res = assert_isapprox(computed, expected)");
- #raw("[res, msg] = assert_isapprox(computed, expected)");

== Input argument

/ computed: Computed numeric value.
/ expected: Expected numeric value.
/ precision: Optional relative tolerance.
/ absolute\_tolerance: Optional absolute tolerance.
/ message: Optional custom failure message.

== Output argument

/ res: true if values are approximately equal, false otherwise.
/ msg: Assertion failure message, empty on success.

== Description

#strong[assert\_isapprox]; is kept for compatibility.

 Absolute tolerance applies to sparse and full numeric arrays, including implicit sparse zeros, with the same rules as asserts.isapprox.

 For complete documentation, use #nlink(<assert_functions:asserts.isapprox>)[asserts.isapprox];.


== Used function(s)

isapprox

== Examples

Historical call

``````matlab
assert_isapprox(1.23456, 1.23457, 1e-5);
``````

Canonical call

``````matlab
asserts.isapprox(1, 1 + 1e-8, 0, 1e-7);
``````


== See also

#nlink(<assert_functions:asserts.isapprox>)[asserts.isapprox];, #nlink(<elementary_functions:7_indexing_dimensions.isapprox>)[isapprox];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [documented as historical name for asserts.isapprox],
)

// Author: Allan CORNET
