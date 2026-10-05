#import "nelson_help.typ": *

= solve <optimization:solve>

Solve an optimization problem object.

== Syntax

- #raw("sol = solve(prob)");
- #raw("[sol, fval, exitflag, output] = solve(prob, name, value)");

== Input argument

/ prob: optimization problem object.
/ name, value: optional solver settings.

== Output argument

/ sol: solution structure.
/ fval: objective value.
/ exitflag: termination indicator.

== Description

#strong[solve]; compiles a supported problem-based model and calls a direct solver.


== Used function(s)

prob2struct fminsearch

== Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Example

``````matlab
x = optimvar('x');
prob = optimproblem('Objective', (x - 2)^2);
[sol, fval] = solve(prob)

``````


== See also

#nlink(<optimization:optimproblem>)[optimproblem];, #nlink(<optimization:prob2struct>)[prob2struct];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
