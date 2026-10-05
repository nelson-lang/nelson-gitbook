#import "nelson_help.typ": *

= fsolve <optimization:fsolve>

Solve a system of nonlinear equations.

== Syntax

- #raw("x = fsolve(fun, x0)");
- #raw("[x, fval, exitflag, output, jacobian] = fsolve(fun, x0, options)");
- #raw("x = fsolve(problem)");

== Input argument

/ fun: function returning equation residuals.
/ x0: initial point.
/ options: solver options.

== Output argument

/ x: estimated root, with the shape of x0.
/ fval: residual at x, with the shape returned by fun.
/ exitflag: reason the solver stopped: 1 (function values near zero), 2 (step below StepTolerance), 3 (residual change below FunctionTolerance), 4 (search direction below StepTolerance), 0 (iteration or evaluation limit), -1 (stopped by output function), -2 (converged to a point that is not a root), -3 (trust region or regularization collapse).
/ output: structure with iterations, funcCount, algorithm, firstorderopt and message fields.
/ jacobian: final Jacobian approximation.

== Description

#strong[fsolve]; solves systems of nonlinear equations F(x) \= 0.

 The #strong[Algorithm]; option selects the engine: #strong['trust-region-dogleg']; (default, square systems), #strong['trust-region']; or #strong['levenberg-marquardt'];. Non-square systems automatically switch to Levenberg-Marquardt with a warning.

 The default #strong[MaxFunctionEvaluations]; is #strong[100\*numberOfVariables];, #strong[MaxIterations]; is 400 and #strong[FunctionTolerance]; and #strong[StepTolerance]; are 1e-6. The #strong[Display]; option supports 'off', 'none', 'final', 'final-detailed', 'notify', 'notify-detailed', 'iter' and 'iter-detailed'.

 If #strong[Jacobian]; is 'on' or #strong[SpecifyObjectiveGradient]; is true, fun must also return the Jacobian of the residuals.


== Used function(s)

optimoptions lsqnonlin

== Bibliography

M. J. D. Powell, "A hybrid method for nonlinear equations", Numerical Methods for Nonlinear Algebraic Equations, 1970. J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Example

``````matlab
fun = @(x) [x(1) - 3; x(2) + 4];
[x, fval] = fsolve(fun, [0; 0])

``````


== See also

#nlink(<optimization:fzero>)[fzero];, #nlink(<optimization:lsqnonlin>)[lsqnonlin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
