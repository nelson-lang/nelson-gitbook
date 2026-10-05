#import "nelson_help.typ": *

= ismembertol <data_analysis:ismembertol>

Members of a set within a tolerance.

== Syntax

- #raw("LIA = ismembertol(A, B)");
- #raw("LIA = ismembertol(A, B, tol)");
- #raw("[LIA, LOCB] = ismembertol(___)");

== Input argument

/ A: numeric array to test.
/ B: numeric set to test against.
/ tol: nonnegative scalar tolerance. The default is 1e-12 for double and 1e-6 for single inputs. The comparison uses tol scaled by the largest absolute value in A and B.

== Output argument

/ LIA: logical array, true where an element of A is within tolerance of some element of B.
/ LOCB: lowest index in B of a matching element, or 0 if none.

== Description

#strong[ismembertol]; returns a logical array the same size as A, containing true where the elements of A are within tolerance of the elements of B. Two values u and v are within tolerance if abs(u-v) \<\= tol\*max(abs(\[A(:);B(:)\])).


== Example

``````matlab
[lia, locb] = ismembertol([1 2 3], [1.0000001 5 3], 1e-6)
``````


== See also

#nlink(<data_analysis:unique>)[unique];, #nlink(<data_analysis:intersect>)[intersect];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
