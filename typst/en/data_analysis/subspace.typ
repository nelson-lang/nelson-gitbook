#import "nelson_help.typ": *

= subspace <data_analysis:subspace>

Measure of distance (angle) between two subspaces spanned by columns of matrices.

== Syntax

- #raw("d = subspace(A, B)");

== Input argument

/ A: matrix whose columns span the first subspace (real or complex).
/ B: matrix whose columns span the second subspace (real or complex).

== Output argument

/ d: scalar measure of distance between the column spaces of A and B. d \= 0 indicates identical subspaces; larger values indicate larger separation.

== Description

#strong[subspace]; computes a scalar measure of the distance between the subspaces spanned by the columns of matrices #strong[A]; and #strong[B];. The value is derived from the principal angles between the two subspaces (computed from orthonormal bases of the column spaces). This measure is useful to quantify how close two column spaces are; it is zero when the subspaces coincide.


== Used function(s)

orth

== Example

``````matlab

% Two 2-D subspaces (columns)
A = [1 0; 0 1; 0 0];    % spans e1 and e2
B = [1 0; 0 0; 0 1];    % spans e1 and e3
d = subspace(A, B)
% d > 0 indicating the subspaces are different

``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
