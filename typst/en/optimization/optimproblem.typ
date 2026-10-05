#import "nelson_help.typ": *

= optimproblem <optimization:optimproblem>

Create an optimization problem object.

== Syntax

- #raw("prob = optimproblem()");
- #raw("prob = optimproblem(name, value)");

== Input argument

/ name, value: problem properties such as Objective, Constraints, Description or ObjectiveSense.

== Output argument

/ prob: optimization problem object.

== Description

#strong[optimproblem]; creates a problem-based model. It can be converted with prob2struct or solved directly for supported unconstrained models.


== Used function(s)

optimvar solve prob2struct

== Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Example

``````matlab
x = optimvar('x');
prob = optimproblem('Objective', (x - 2)^2);
[sol, fval] = solve(prob)

``````


== See also

#nlink(<optimization:optimvar>)[optimvar];, #nlink(<optimization:solve>)[solve];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
