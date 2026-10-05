#import "nelson_help.typ": *

= intlinprog <optimization:intlinprog>

Mixed-integer linear programming.

== Syntax

- #raw("x = intlinprog(f, intcon, A, b)");
- #raw("[x, fval, exitflag, output] = intlinprog(f, intcon, A, b, Aeq, beq, lb, ub, x0, options)");
- #raw("[x, fval, exitflag, output] = intlinprog(problem)");

== Input argument

/ f: linear objective coefficients.
/ intcon: indices of integer variables.
/ A, b: linear inequality constraints A\*x \<\= b.
/ Aeq, beq: linear equality constraints Aeq\*x \= beq.
/ lb, ub: lower and upper variable bounds.
/ options: solver options created with optimoptions or optimset.

== Output argument

/ x: computed minimizer.
/ fval: objective value f'\*x.
/ exitflag: termination indicator.
/ output: diagnostic structure.

== Description

#strong[intlinprog]; solves linear optimization problems where selected variables are integer-valued. Nelson uses HiGHS when available.

 The accepted problem structure can contain solver, f, intcon, Aineq or A, bineq or b, Aeq, beq, lb, ub, x0 and options fields.

 The #strong[output]; structure reports relative and absolute gap, number of feasible points, node count, constraint violation, iterations, elapsed time, algorithm, normalized backend status, primal solution status and backend message. The #strong[exitflag]; distinguishes optimal, infeasible, unbounded, limit-reached and early-stop statuses when the backend provides that status.

 Options such as #strong[MaxTime];, #strong[MaxNodes];, #strong[MaxIterations];, #strong[MaxFeasiblePoints];, #strong[AbsoluteGapTolerance];, #strong[RelativeGapTolerance];, #strong[IntegerTolerance];, #strong[LPPreprocess];, #strong[RootLPAlgorithm];, #strong[Heuristics]; and #strong[CutGeneration]; are mapped to HiGHS where possible. Recognized options without a direct backend equivalent are accepted and ignored.


== Used function(s)

optimoptions prob2struct

== Bibliography

Huangfu, Q. and Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018. Achterberg, T., Constraint Integer Programming, PhD thesis, Technische Universitaet Berlin, 2007. Nemhauser, G. L. and Wolsey, L. A., Integer and Combinatorial Optimization, Wiley, 1988.

== Example

``````matlab
f = [8; 1];
intcon = 2;
A = [-1 -2; -4 -1; 2 1];
b = [14; -33; 20];
opts = optimoptions('intlinprog', 'Display', 'off');
[x, fval, exitflag, output] = intlinprog(f, intcon, A, b, [], [], [], [], [], opts)

``````


== See also

#nlink(<optimization:linprog>)[linprog];, #nlink(<optimization:optimoptions>)[optimoptions];, #nlink(<optimization:prob2struct>)[prob2struct];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
