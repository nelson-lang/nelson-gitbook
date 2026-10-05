#import "nelson_help.typ": *

= fmincon <optimization:fmincon>

Constrained nonlinear minimization.

== Syntax

- #raw("x = fmincon(fun, x0, A, b)");
- #raw("x = fmincon(fun, x0, A, b, Aeq, beq, lb, ub, nonlcon, options)");
- #raw("[x, fval, exitflag, output, lambda, grad, hessian] = fmincon(___)");
- #raw("x = fmincon(problem)");

== Input argument

/ fun: objective function returning a real scalar.
/ x0: initial point.
/ A, b: linear inequalities A\*x \<\= b.
/ Aeq, beq: linear equalities Aeq\*x \= beq.
/ lb, ub: lower and upper bounds.
/ nonlcon: nonlinear constraint function returning c and ceq.
/ options: solver options created with optimoptions or optimset.

== Output argument

/ x: computed minimizer.
/ fval: objective value at x.
/ exitflag: termination indicator.
/ output: diagnostic structure.
/ lambda: Lagrange multiplier structure.
/ grad: objective gradient at x.
/ hessian: approximate Hessian of the Lagrangian.

== Description

#strong[fmincon]; solves constrained nonlinear minimization problems with linear constraints, bounds and nonlinear constraints.

 The #strong[sqp]; path solves quadratic subproblems with active linearized constraints, BFGS Hessian updates and merit-function line search. Nonlinear constraints are handled directly in the SQP subproblem through finite-difference or user-supplied Jacobians.

 The #strong[interior-point]; path builds an interior starting point with logarithmic barrier continuation before entering the nonlinear SQP phase. The #strong[active-set]; path keeps an explicit working set and reports active linear rows in #strong[output.activeconstraints];. The #strong[sqp-legacy]; path uses a separate conservative SQP loop with active-set subproblems and stricter merit decrease.

 For badly scaled problems, set #strong[ScaleProblem]; to #strong[obj-and-constr]; and provide #strong[TypicalX];. Nelson scales SQP subproblems, initializes the Hessian with the variable scales and applies scaled merit decrease tests.

 If nonlinear SQP cannot recover feasibility, Nelson runs a restoration phase based on penalty continuation and reports #strong[output.restoration]; when that phase supplies the returned point.

 The #strong[trust-region-reflective]; path supports bound and linear-equality problems with user gradients, Hessian matrices, Hessian callbacks or Hessian multiply callbacks, projected truncated conjugate gradients, diagonal or band preconditioning, and trust-region radius updates. The #strong[output]; structure includes conjugate-gradient diagnostics such as #strong[pcgflag];, #strong[pcgresidual]; and #strong[trustregionradius];.

 Accepted display modes include #strong[off];, #strong[none];, #strong[final];, #strong[final-detailed];, #strong[notify];, #strong[notify-detailed];, #strong[iter]; and #strong[iter-detailed];. Setting #strong[Diagnostics]; to #strong[on]; prints a summary of variables, functions, constraints and selected algorithm before solving.

 Default options depend on the algorithm: #strong[interior-point]; uses #strong[MaxIterations]; 1000, #strong[MaxFunctionEvaluations]; 3000, #strong[StepTolerance]; 1e-10 and #strong[SubproblemAlgorithm]; 'factorization'; the other algorithms use #strong[MaxIterations]; 400, #strong[MaxFunctionEvaluations]; '100\*numberOfVariables' and #strong[StepTolerance]; 1e-6.

 The #strong[exitflag]; output reports 1 (first-order optimality satisfied), 2 (step below StepTolerance), 3 (objective change below FunctionTolerance, trust-region-reflective), 0 (iteration or evaluation limit), -1 (stopped by output function), -2 (no feasible point found) or -3 (objective below ObjectiveLimit).


== Used function(s)

optimoptions optimset quadprog fminsearch

== Bibliography

Powell, M. J. D., A fast algorithm for nonlinearly constrained optimization calculations, Lecture Notes in Mathematics, 1978. Han, S. P., A globally convergent method for nonlinear programming, Journal of Optimization Theory and Applications, 1977. Gill, P. E., Murray, W. and Wright, M. H., Practical Optimization, Academic Press, 1981. Nocedal, J. and Wright, S. J., Numerical Optimization, Springer, 2006. Byrd, R. H., Schnabel, R. B. and Shultz, G. A., Approximate solution of the trust region problem by minimization over two-dimensional subspaces, Mathematical Programming, 1988. Conn, A. R., Gould, N. I. M. and Toint, P. L., Trust Region Methods, SIAM, 2000.

== Examples

Minimize Rosenbrock's function on the unit disk.

``````matlab
function [c, ceq] = unitdisk(x)
  c = x(1)^2 + x(2)^2 - 1;
  ceq = [];
end
fun = @(x) 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
opts = optimoptions('fmincon', 'Display', 'off', 'Algorithm', 'sqp');
[x, fval] = fmincon(fun, [0; 0], [], [], [], [], [], [], @unitdisk, opts)

``````

Use linear constraints.

``````matlab
fun = @(x) 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
A = [1 2];
b = 1;
[x, fval, exitflag] = fmincon(fun, [-1; 2], A, b)

``````

Use a trust-region-reflective Hessian matrix.

``````matlab
function [f, g] = quadobj(x)
  f = (x(1) - 1)^2 + (x(2) - 2)^2;
  g = [2*(x(1) - 1); 2*(x(2) - 2)];
end
opts = optimoptions('fmincon', 'Display', 'off', 'Algorithm', 'trust-region-reflective', ...
  'SpecifyObjectiveGradient', true, 'Hessian', 2*eye(2));
[x, fval] = fmincon(@quadobj, [0; 0], [], [], [], [], [0; 0], [3; 3], [], opts)

``````

Use a trust-region-reflective Hessian multiply function.

``````matlab
function [f, g] = quadobj(x)
  f = (x(1) - 1)^2 + (x(2) - 2)^2;
  g = [2*(x(1) - 1); 2*(x(2) - 2)];
end
function y = quadhessmult(x, v)
  y = 2*v;
end
opts = optimoptions('fmincon', 'Display', 'off', 'Algorithm', 'trust-region-reflective', ...
  'SpecifyObjectiveGradient', true, 'HessianMultiplyFcn', @quadhessmult);
[x, fval] = fmincon(@quadobj, [0; 0], [], [], [], [], [0; 0], [3; 3], [], opts)

``````


== See also

#nlink(<optimization:optimoptions>)[optimoptions];, #nlink(<optimization:fminsearch>)[fminsearch];, #nlink(<optimization:quadprog>)[quadprog];, #nlink(<optimization:solve>)[solve];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
