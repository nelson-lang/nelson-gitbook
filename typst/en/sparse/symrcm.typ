#import "nelson_help.typ": *

= symrcm <sparse:symrcm>

Reverse Cuthill-McKee permutation.

== Syntax

- #raw("p = symrcm(S)");

== Input argument

/ S: a square sparse or full floating-point or logical matrix.

== Output argument

/ p: row vector permutation.

== Description

#strong[symrcm]; returns a Reverse Cuthill-McKee permutation computed from the symmetrized nonzero pattern of #strong[S];.

 The permutation can reduce matrix bandwidth before sparse factorizations or iterative solves.

 Double, single, logical, complex double, and complex single square matrices are supported, both full and sparse. For sparse input, stored zero values are ignored when the graph pattern is built.

 The returned permutation is a row vector of one-based indices. Applying #strong[S(p,p)]; reorders rows and columns consistently.


== Examples

``````matlab
S = sparse([0 1 0 0; 1 0 1 0; 0 1 0 1; 0 0 1 0]);
p = symrcm(S)

``````

``````matlab
S = sparse(single([0 1i; 0 0]));
p = symrcm(S)

``````


== See also

#nlink(<sparse:sparse>)[sparse];, #nlink(<linear_algebra:5_matrix_properties.bandwidth>)[bandwidth];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
