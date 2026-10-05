#import "nelson_help.typ": *

= prob2struct <optimization:prob2struct>

Convert an optimization problem to a solver structure.

== Syntax

- #raw("problem = prob2struct(prob)");

== Input argument

/ prob: optimization problem object.

== Output argument

/ problem: structure with solver, objective, x0 and direct-solver fields when the problem can be lowered.

== Description

#strong[prob2struct]; lowers supported problem-based models to the direct solver problem-structure form.

 For linear objectives and linear constraints, the returned structure contains #strong[f];, #strong[A];, #strong[b];, #strong[Aeq];, #strong[beq];, #strong[lb];, #strong[ub]; and #strong[intcon];. Variables are ordered by name to make the generated coefficient matrices deterministic.

 For continuous quadratic objectives with linear constraints, #strong[prob2struct]; returns #strong[solver \= 'quadprog']; with #strong[H];, #strong[f];, linear constraints and bounds. Constant objective offsets are stored and are restored by #strong[solve];.


== Used function(s)

optimproblem solve

== Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Examples

``````matlab
x = optimvar('x');
prob = optimproblem('Objective', (x + 1)^2);
s = prob2struct(prob)

``````

``````matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
prob = optimproblem;
prob.Objective = [3 4] * x;
prob.Constraints.balance = [1 2] * x == 5;
s = prob2struct(prob);
s.Aeq

``````

``````matlab
y = optimvar('y', 2, 1);
prob = optimproblem('Objective', (y(1) - 1)^2 + (y(2) + 3)^2);
s = prob2struct(prob);
s.solver

``````


== See also

#nlink(<optimization:optimproblem>)[optimproblem];, #nlink(<optimization:solve>)[solve];, #nlink(<optimization:quadprog>)[quadprog];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
