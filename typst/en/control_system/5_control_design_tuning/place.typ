#import "../nelson_help.typ": *

= place <control_system:5_control_design_tuning.place>

Pole placement gain selection using robust eigenstructure assignment.

== Syntax

- #raw("K = place(A, B, p)");
- #raw("[K, prec] = place(A, B, p)");
- #raw("[K, prec, message] = place(A, B, p)");

== Input argument

/ A: State matrix: Nx-by-Nx matrix.
/ B: Input-to-state matrix: Nx-by-Nu matrix.
/ p: Desired closed-loop pole location vector of length Nx.

== Output argument

/ K: Feedback gain matrix: Nu-by-Nx matrix.
/ prec: Estimated accuracy of the assigned poles, expressed as an approximate number of accurate decimal digits.
/ message: Warning message returned when one or more poles could not be placed to the requested accuracy (empty otherwise).

== Description

The function #strong[place]; computes the feedback gain matrix #strong[K]; such that the closed-loop poles of #strong[A - B\*K]; are the entries of the vector #strong[p];, i.e. #strong[p \= eig(A - B\*K)];.

 Unlike #strong[acker];, which is restricted to single-input systems, #strong[place]; supports multi-input models (#strong[B]; with several columns) and selects the closed-loop eigenvectors so that the assignment is as insensitive as possible to perturbations.

 Complex desired poles must be supplied in conjugate pairs. The multiplicity of any pole cannot exceed the rank of #strong[B];. For real #strong[A];, #strong[B]; and #strong[p];, the resulting gain #strong[K]; is real.

 The algorithm is the rank-one update method described in J. Kautsky, N. K. Nichols and P. Van Dooren, "Robust pole assignment in linear state feedback", International Journal of Control, vol. 41, no. 5, pp. 1129-1155, 1985.


== Bibliography

J. Kautsky, N. K. Nichols and P. Van Dooren, "Robust pole assignment in linear state feedback", International Journal of Control, 41(5):1129-1155, 1985.

== Example

``````matlab
A = [-0.5 0 0; 0 -2 10; 0 1 -2];
B = [1 0; 0 0; 0 1];
p = [-3; -5; -7];
[K, prec] = place(A, B, p)
eig(A - B * K)
``````


== See also

#nlink(<control_system:5_control_design_tuning.acker>)[acker];, #nlink(<control_system:5_control_design_tuning.lqr>)[lqr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
