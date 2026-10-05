#import "../nelson_help.typ": *

= rsf2csf <linear_algebra:3_eigen_singular_values.rsf2csf>

Convert real Schur form to complex Schur form.

== Syntax

- #raw("[Uc, Tc] = rsf2csf(U, T)");

== Input argument

/ U: unitary matrix (double or single, real or complex)
/ T: schur form (double or single, real or complex)

== Output argument

/ Uc: transformed unitary matrix
/ Tc: transformed schur form

== Description

#strong[\[Uc, Tc\] \= rsf2csf(U, T)]; transforms the outputs of #strong[\[U, T\] \= schur(X)]; for real matrices#strong[X]; from real Schur form to complex Schur form.


== Example

``````matlab
X = [1,     1,     1,     3;
     1,     2,     1,     1;
     1,     1,     3,     1;
    -2,     1,     1,     4];
[U, T] = schur(X)
[Uc, Tc] = rsf2csf(U, T)
``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.schur>)[schur];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
