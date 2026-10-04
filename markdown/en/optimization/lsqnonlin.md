# lsqnonlin

Nonlinear least-squares solution.

## 📝 Syntax

- x = lsqnonlin(fun, x0)
- [x, resnorm, residual, exitflag, output, lambda, jacobian] = lsqnonlin(fun, x0, lb, ub, options)
- [x, resnorm, residual, exitflag, output, lambda, jacobian] = lsqnonlin(fun, x0, lb, ub, A, b, Aeq, beq, nonlcon, options)
- x = lsqnonlin(problem)

## 📥 Input argument

- fun - function returning a residual array.
- x0 - initial point.
- lb, ub - bounds, optionally empty.
- A, b, Aeq, beq - linear inequality and equality constraints, optionally empty.
- nonlcon - nonlinear constraint function returning [c, ceq], optionally empty.
- options - solver options.

## 📤 Output argument

- x - estimated solution, with the shape of x0.
- resnorm - squared residual norm sum(fun(x).^2).
- residual - residual at x, with the shape returned by fun.
- exitflag - reason the solver stopped: 1 (gradient below tolerance), 2 (step below StepTolerance), 3 (residual change below FunctionTolerance), 4 (search direction below StepTolerance), 0 (iteration or evaluation limit), -1 (stopped by output function), -2 (inconsistent bounds).
- output - structure with firstorderopt, iterations, funcCount, cgiterations, algorithm, stepsize, message, bestfeasible and constrviolation fields.
- lambda - Lagrange multipliers structure with lower, upper, eqlin, ineqlin, eqnonlin and ineqnonlin fields.
- jacobian - final finite-difference or user-provided Jacobian.

## 📄 Description

<b>lsqnonlin</b> solves nonlinear least-squares problems min sum(fun(x).^2), optionally subject to bounds and constraints.

The <b>Algorithm</b> option selects the engine: <b>'trust-region-reflective'</b> (default), <b>'levenberg-marquardt'</b> (also accepts bounds) or <b>'interior-point'</b>. Linear or nonlinear constraints automatically use the <b>interior-point</b> algorithm.

The default <b>MaxFunctionEvaluations</b> is <b>100\*numberOfVariables</b>, <b>MaxIterations</b> is 400 and <b>FunctionTolerance</b> and <b>StepTolerance</b> are 1e-6. The <b>Display</b> option supports 'off', 'none', 'final', 'final-detailed', 'notify', 'notify-detailed', 'iter' and 'iter-detailed'.

If <b>Jacobian</b> is 'on' or <b>SpecifyObjectiveGradient</b> is true, fun must also return the Jacobian of the residuals.

## Used function(s)

    optimoptions

## 📚 Bibliography

K. Levenberg, "A method for the solution of certain non-linear problems in least squares", Quarterly of Applied Mathematics, 1944.
D. W. Marquardt, "An algorithm for least-squares estimation of nonlinear parameters", SIAM Journal on Applied Mathematics, 1963.

## 💡 Example

```matlab
fun = @(x) [x(1) - 2; x(2) + 1];
[x, resnorm] = lsqnonlin(fun, [0; 0])

```

## 🔗 See also

[fsolve](../optimization/fsolve.md), [lsqnonneg](../optimization/lsqnonneg.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
