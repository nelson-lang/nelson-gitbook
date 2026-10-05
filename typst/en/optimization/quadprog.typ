#import "nelson_help.typ": *

= quadprog <optimization:quadprog>

Quadratic programming.

== Syntax

- #raw("x = quadprog(H, f)");
- #raw("[x, fval, exitflag, output, lambda] = quadprog(H, f, A, b, Aeq, beq, lb, ub, x0, options)");
- #raw("x = quadprog(problem)");

== Input argument

/ H, f: quadratic and linear objective terms.
/ A, b, Aeq, beq: linear inequality and equality constraints.
/ lb, ub: lower and upper bounds.

== Output argument

/ x: estimated solution.
/ fval: objective value.
/ lambda: constraint multiplier structure.

== Description

#strong[quadprog]; solves dense convex quadratic programs with linear constraints and bounds using an active-set strategy.

 The problem-structure form accepts #strong[H];, #strong[f];, #strong[Aineq]; or #strong[A];, #strong[bineq]; or #strong[b];, #strong[Aeq];, #strong[beq];, #strong[lb];, #strong[ub];, #strong[x0]; and #strong[options];. Problem-based quadratic expressions compiled by #strong[prob2struct]; are routed to #strong[quadprog];.


== Used function(s)

optimoptions prob2struct

== Bibliography

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981. J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Examples

``````matlab
H = [2 0; 0 2];
f = [-2; -4];
lb = [0; 0];
[x, fval] = quadprog(H, f, [], [], [], [], lb, [])

``````

``````matlab
y = optimvar('y', 2, 1);
prob = optimproblem('Objective', (y(1) - 1)^2 + (y(2) + 3)^2);
[sol, fval] = solve(prob, struct('y', [0; 0]));
sol.y

``````


== See also

#nlink(<optimization:lsqnonneg>)[lsqnonneg];, #nlink(<optimization:optimoptions>)[optimoptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
