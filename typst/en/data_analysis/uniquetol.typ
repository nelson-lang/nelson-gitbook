#import "nelson_help.typ": *

= uniquetol <data_analysis:uniquetol>

Unique values within a tolerance.

== Syntax

- #raw("C = uniquetol(A)");
- #raw("C = uniquetol(A, tol)");
- #raw("C = uniquetol(___, name, value)");
- #raw("[C, ia, ic] = uniquetol(___)");

== Input argument

/ A: real full array of type single or double.
/ tol: nonnegative scalar tolerance. The default is 1e-12 for double and 1e-6 for single inputs. Two values u and v are within tolerance if abs(u-v) \<\= tol\*DataScale.
/ name, value: one or more name-value pairs: 'ByRows' (logical, treat each row of A as a single element), 'OutputAllIndices' (logical, return ia as a cell array holding every index of each group), 'DataScale' (scalar or per-column vector used instead of the automatic scaling).

== Output argument

/ C: unique values of A within tolerance, sorted in ascending order.
/ ia: index vector such that C \= A(ia). When 'OutputAllIndices' is true, ia is a cell array where ia{k} lists every index of A belonging to the k-th group.
/ ic: index vector such that A is within tolerance of C(ic).

== Description

#strong[uniquetol]; returns the unique values of #strong[A]; using tolerance #strong[tol];. Two elements are considered equal when their absolute difference is less than or equal to #strong[tol]; scaled by the data. By default the scaling is the largest absolute value of #strong[A];, or the largest absolute value of each column when #strong['ByRows']; is true.

 The output #strong[C]; is sorted in ascending order and, for each group of nearby values, keeps the smallest one.


== Example

``````matlab
[C, ia, ic] = uniquetol([2 1 2 1.0000001], 1e-6)
``````


== See also

#nlink(<data_analysis:ismembertol>)[ismembertol];, #nlink(<data_analysis:unique>)[unique];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
