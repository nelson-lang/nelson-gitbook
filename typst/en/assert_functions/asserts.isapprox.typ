#import "nelson_help.typ": *

= asserts.isapprox <assert_functions:asserts.isapprox>

Check that computed and expected numeric values are approximately equal.

== Syntax

- #raw("asserts.isapprox(computed, expected)");
- #raw("asserts.isapprox(computed, expected, relTol)");
- #raw("asserts.isapprox(computed, expected, relTol, absTol)");
- #raw("asserts.isapprox(computed, expected, message)");
- #raw("[res, msg] = asserts.isapprox(computed, expected, relTol)");

== Input argument

/ computed: Computed numeric value.
/ expected: Expected numeric value.
/ relTol: Optional nonnegative finite numeric scalar used as relative tolerance.
/ absTol: Optional nonnegative finite numeric scalar used as absolute tolerance.
/ message: Optional custom failure message.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

This is the method-style form of assert\_isapprox.

 The initial relative comparison follows isapprox. When absTol is positive, an additional elementwise comparison accepts numeric arrays of equal dimensions when every difference is at most max(absTol, relTol \* max(abs(expected), abs(computed))). Real and imaginary components are checked separately. Matching NaNs and infinities of the same sign are accepted.

 The absolute comparison supports sparse\/sparse and sparse\/full inputs, including implicit zeros and different sparsity patterns. Sparse\/sparse comparisons visit the union of stored coordinates without expanding the arrays to full storage. A mixed comparison visits the full input and the stored sparse coefficients. Failure diagnostics include the first differing coordinate.


== Examples

Sparse absolute tolerance

``````matlab
asserts.isapprox(sparse([0; 1e-10]), zeros(2, 1), 0, 1e-9);
``````

Absolute tolerance

``````matlab
asserts.isapprox(1, 1 + 1e-8, 0, 1e-7);
``````

Capture a diagnostic

``````matlab
[res, msg] = asserts.isapprox([1 2], [1 3], eps);
``````


== See also

#nlink(<assert_functions:assert_isapprox>)[assert\_isapprox];, #nlink(<assert_functions:asserts.notApprox>)[asserts.notApprox];, #nlink(<assert_functions:asserts.diff>)[asserts.diff];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
