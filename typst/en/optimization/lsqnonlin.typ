#import "nelson_help.typ": *

= lsqnonlin <optimization:lsqnonlin>

Nonlinear least-squares solution.

== Syntax

- #raw("x = lsqnonlin(fun, x0)");
- #raw("[x, resnorm, residual, exitflag, output, lambda, jacobian] = lsqnonlin(fun, x0, lb, ub, options)");
- #raw("[x, resnorm, residual, exitflag, output, lambda, jacobian] = lsqnonlin(fun, x0, lb, ub, A, b, Aeq, beq, nonlcon, options)");
- #raw("x = lsqnonlin(problem)");

== Input argument

/ fun: function returning a residual array.
/ x0: initial point.
/ lb, ub: bounds, optionally empty.
/ A, b, Aeq, beq: linear inequality and equality constraints, optionally empty.
/ nonlcon: nonlinear constraint function returning \[c, ceq\], optionally empty.
/ options: solver options.

== Output argument

/ x: estimated solution, with the shape of x0.
/ resnorm: squared residual norm sum(fun(x).^2).
/ residual: residual at x, with the shape returned by fun.
/ exitflag: reason the solver stopped: 1 (gradient below tolerance), 2 (step below StepTolerance), 3 (residual change below FunctionTolerance), 4 (search direction below StepTolerance), 0 (iteration or evaluation limit), -1 (stopped by output function), -2 (inconsistent bounds).
/ output: structure with firstorderopt, iterations, funcCount, cgiterations, algorithm, stepsize, message, bestfeasible and constrviolation fields.
/ lambda: Lagrange multipliers structure with lower, upper, eqlin, ineqlin, eqnonlin and ineqnonlin fields.
/ jacobian: final finite-difference or user-provided Jacobian.

== Description

#strong[lsqnonlin]; solves nonlinear least-squares problems min sum(fun(x).^2), optionally subject to bounds and constraints.

 The #strong[Algorithm]; option selects the engine: #strong['trust-region-reflective']; (default), #strong['levenberg-marquardt']; (also accepts bounds) or #strong['interior-point'];. Linear or nonlinear constraints automatically use the #strong[interior-point]; algorithm.

 The default #strong[MaxFunctionEvaluations]; is #strong[100\*numberOfVariables];, #strong[MaxIterations]; is 400 and #strong[FunctionTolerance]; and #strong[StepTolerance]; are 1e-6. The #strong[Display]; option supports 'off', 'none', 'final', 'final-detailed', 'notify', 'notify-detailed', 'iter' and 'iter-detailed'.

 If #strong[Jacobian]; is 'on' or #strong[SpecifyObjectiveGradient]; is true, fun must also return the Jacobian of the residuals.


== Used function(s)

optimoptions

== Bibliography

K. Levenberg, "A method for the solution of certain non-linear problems in least squares", Quarterly of Applied Mathematics, 1944. D. W. Marquardt, "An algorithm for least-squares estimation of nonlinear parameters", SIAM Journal on Applied Mathematics, 1963.

== Example

``````matlab
fun = @(x) [x(1) - 2; x(2) + 1];
[x, resnorm] = lsqnonlin(fun, [0; 0])

``````


== See also

#nlink(<optimization:fsolve>)[fsolve];, #nlink(<optimization:lsqnonneg>)[lsqnonneg];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
