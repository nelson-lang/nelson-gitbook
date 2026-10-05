#import "nelson_help.typ": *

= linprog <optimization:linprog>

Linear programming.

== Syntax

- #raw("x = linprog(f, A, b)");
- #raw("[x, fval, exitflag, output, lambda] = linprog(f, A, b, Aeq, beq, lb, ub, options)");
- #raw("[x, fval, exitflag, output, lambda] = linprog(problem)");

== Input argument

/ f: linear objective coefficients.
/ A, b: linear inequality constraints A\*x \<\= b.
/ Aeq, beq: linear equality constraints Aeq\*x \= beq.
/ lb, ub: lower and upper variable bounds.
/ options: solver options created with optimoptions or optimset.

== Output argument

/ x: computed minimizer.
/ fval: objective value f'\*x.
/ exitflag: termination indicator.
/ output: diagnostic structure.
/ lambda: structure with lower, upper, ineqlin and eqlin multiplier estimates.

== Description

#strong[linprog]; solves linear optimization problems with linear constraints and bounds. Nelson uses HiGHS when available.

 Supported structures include #strong[f];, #strong[Aineq]; or #strong[A];, #strong[bineq]; or #strong[b];, #strong[Aeq];, #strong[beq];, #strong[lb];, #strong[ub];, #strong[x0]; and #strong[options];. The #strong[output]; structure reports the algorithm, normalized backend status, primal solution status, message, constraint violation, iterations and first-order residual estimate. The #strong[lambda]; structure is filled for continuous linear programs from backend dual information.

 Options such as #strong[Display];, #strong[MaxTime];, #strong[MaxIterations];, #strong[LPMaxIterations];, #strong[ConstraintTolerance];, #strong[LPOptimalityTolerance];, #strong[LPPreprocess]; and #strong[RootLPAlgorithm]; are converted to HiGHS options when possible. Other recognized optimization options are accepted and ignored when no backend equivalent exists.


== Used function(s)

optimoptions prob2struct

== Bibliography

Dantzig, G. B., Linear Programming and Extensions, Princeton University Press, 1963. Huangfu, Q. and Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018. Nocedal, J. and Wright, S. J., Numerical Optimization, Springer, 2006.

== Example

``````matlab
f = [-1; -1];
A = [1 2; 4 2];
b = [4; 12];
opts = optimoptions('linprog', 'Display', 'off');
[x, fval, exitflag, output, lambda] = linprog(f, A, b, [], [], [0; 0], [], opts)

``````


== See also

#nlink(<optimization:intlinprog>)[intlinprog];, #nlink(<optimization:quadprog>)[quadprog];, #nlink(<optimization:optimoptions>)[optimoptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
