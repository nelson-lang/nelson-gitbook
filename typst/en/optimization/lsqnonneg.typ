#import "nelson_help.typ": *

= lsqnonneg <optimization:lsqnonneg>

Nonnegative linear least-squares solution.

== Syntax

- #raw("x = lsqnonneg(C, d)");
- #raw("[x, resnorm, residual, exitflag, output, lambda] = lsqnonneg(C, d, options)");

== Input argument

/ C: coefficient matrix.
/ d: right-hand side vector.
/ options: solver options.

== Output argument

/ x: nonnegative least-squares solution.
/ resnorm: squared residual norm.
/ residual: d - C\*x.
/ lambda: KKT multipliers for nonnegativity constraints.

== Description

#strong[lsqnonneg]; solves min norm(C\*x-d)^2 subject to x \>\= 0 using an active-set method.


== Used function(s)

optimset

== Bibliography

C. L. Lawson and R. J. Hanson, Solving Least Squares Problems, SIAM, 1995.

== Example

``````matlab
C = [1 0; 0 1; 1 1];
d = [1; 2; 3];
[x, resnorm] = lsqnonneg(C, d)

``````


== See also

#nlink(<optimization:lsqnonlin>)[lsqnonlin];, #nlink(<optimization:quadprog>)[quadprog];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
