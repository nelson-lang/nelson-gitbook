#import "nelson_help.typ": *

= optimization tutorial <optimization:1_optimization_tutorial>

Optimization module tutorial.

== Description

The #strong[optimization]; module provides direct numerical solvers and a problem-based modelling layer. Use direct solvers when the coefficient matrices, residual function, or objective function are already available. Use the problem-based layer when the model is easier to read as variables, expressions, and constraints.

 

#table(
  columns: 3,
  [Problem type], [Direct solver], [Typical inputs], 
  [Scalar bounded minimization], [#strong[fminbnd];], [Objective function and finite interval.], 
  [Unconstrained minimization], [#strong[fminunc];, #strong[fminsearch];], [Objective function and initial point.], 
  [Zero finding], [#strong[fzero];], [Function and bracket or initial point.], 
  [Linear programming], [#strong[linprog];], [Linear objective, linear constraints, and bounds.], 
  [Mixed-integer linear programming], [#strong[intlinprog];], [Linear objective, integer variable indices, constraints, and bounds.], 
  [Quadratic programming], [#strong[quadprog];], [Quadratic objective, linear constraints, and bounds.], 
  [Constrained nonlinear minimization], [#strong[fmincon];], [Nonlinear objective, constraints, and bounds.], 
  [Least squares], [#strong[lsqnonneg];, #strong[lsqnonlin];], [Linear or nonlinear residual model.], 
  [Nonlinear equations], [#strong[fsolve];], [Vector function and initial point.], 
)
 Solver behavior is controlled with #strong[optimoptions]; or #strong[optimset];. Use #strong[optimget]; to read an option with a fallback value. Linear and mixed-integer linear problems use the HiGHS backend when it is available. Problem-based compilation routes continuous linear, mixed-integer linear, quadratic and constrained nonlinear problems to the corresponding direct solver. Nonlinear problems with integer or binary variables are rejected explicitly.

 The problem-based workflow starts with #strong[optimvar]; and #strong[optimproblem];. Expressions and constraints are built with ordinary arithmetic. #strong[solve]; calls a supported direct solver, and #strong[prob2struct]; returns the direct-solver structure for inspection or lower-level execution.

 Binary variables created with #strong[optimvar]; have default bounds 0 and 1. Integer and binary variables route linear models to #strong[intlinprog];; continuous linear models route to #strong[linprog];; continuous nonlinear constrained models route to #strong[fmincon];. Maximization problems are converted internally to minimization and #strong[solve]; returns the objective value in the original problem sense.

 When a direct solver proves a problem infeasible and returns no primal vector, #strong[solve]; returns a solution structure with the model variable names and empty values. This keeps diagnostic outputs such as #strong[exitflag]; and #strong[output.message]; available without failing during result unpacking.


== Used function(s)

fminbnd fminunc fminsearch fzero fmincon linprog intlinprog optimproblem optimvar solve prob2struct

== Bibliography

Brent, R. P., Algorithms for Minimization Without Derivatives, Prentice-Hall, 1973. Nelder, J. A. and Mead, R., A simplex method for function minimization, The Computer Journal, 1965. Lawson, C. L. and Hanson, R. J., Solving Least Squares Problems, SIAM, 1995. Nocedal, J. and Wright, S. J., Numerical Optimization, Springer, 2006. Huangfu, Q. and Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018.

== Examples

Minimize a scalar function on a bounded interval.

``````matlab
opts = optimset('Display', 'off');
[x, fval] = fminbnd(@(x) (x - 1.5)^2 + 0.25, -2, 4, opts)

``````

Minimize an unconstrained nonlinear function.

``````matlab
fun = @(x) 3*x(1)^2 + 2*x(1)*x(2) + x(2)^2 - 4*x(1) + 5*x(2);
opts = optimoptions('fminunc', 'Display', 'off');
[x, fval] = fminunc(fun, [1, 1], opts)

``````

Solve a linear programming problem with nonnegative variables.

``````matlab
f = [-1; -1];
A = [1 2; 4 2];
b = [4; 12];
opts = optimoptions('linprog', 'Display', 'off');
[x, fval, exitflag] = linprog(f, A, b, [], [], [0; 0], [], opts)

``````

Solve a small mixed-integer linear programming problem.

``````matlab
f = [-5; -4; -3];
intcon = 1:3;
A = [2 3 1; 4 1 2];
b = [5; 8];
lb = [0; 0; 0];
ub = [1; 1; 1];
opts = optimoptions('intlinprog', 'Display', 'off');
[x, fval, exitflag] = intlinprog(f, intcon, A, b, [], [], lb, ub, [], opts)

``````

Build and solve a problem-based linear model.

``````matlab
x = optimvar('x', 2, 'LowerBound', 0);
prob = optimproblem('Objective', -x(1) - x(2));
prob.Constraints.capacity = [1 2; 4 2] * x <= [4; 12];
problem = prob2struct(prob);
[sol, fval, exitflag] = solve(prob);
sol.x

``````


== See also

#nlink(<optimization:optimoptions>)[optimoptions];, #nlink(<optimization:optimproblem>)[optimproblem];, #nlink(<optimization:fminunc>)[fminunc];, #nlink(<optimization:fmincon>)[fmincon];, #nlink(<optimization:solve>)[solve];, #nlink(<optimization:linprog>)[linprog];, #nlink(<optimization:intlinprog>)[intlinprog];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
