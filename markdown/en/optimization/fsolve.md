# fsolve

Solve a system of nonlinear equations.

## 📝 Syntax

- x = fsolve(fun, x0)
- [x, fval, exitflag, output, jacobian] = fsolve(fun, x0, options)
- x = fsolve(problem)

## 📥 Input argument

- fun - function returning equation residuals.
- x0 - initial point.
- options - solver options.

## 📤 Output argument

- x - estimated root, with the shape of x0.
- fval - residual at x, with the shape returned by fun.
- exitflag - reason the solver stopped: 1 (function values near zero), 2 (step below StepTolerance), 3 (residual change below FunctionTolerance), 4 (search direction below StepTolerance), 0 (iteration or evaluation limit), -1 (stopped by output function), -2 (converged to a point that is not a root), -3 (trust region or regularization collapse).
- output - structure with iterations, funcCount, algorithm, firstorderopt and message fields.
- jacobian - final Jacobian approximation.

## 📄 Description


<b>fsolve</b> solves systems of nonlinear equations F(x) = 0. 

The <b>Algorithm</b> option selects the engine: <b>'trust-region-dogleg'</b> (default, square systems), <b>'trust-region'</b> or <b>'levenberg-marquardt'</b>. Non-square systems automatically switch to Levenberg-Marquardt with a warning. 

The default <b>MaxFunctionEvaluations</b> is <b>100\*numberOfVariables</b>, <b>MaxIterations</b> is 400 and <b>FunctionTolerance</b> and <b>StepTolerance</b> are 1e-6. The <b>Display</b> option supports 'off', 'none', 'final', 'final-detailed', 'notify', 'notify-detailed', 'iter' and 'iter-detailed'. 

If <b>Jacobian</b> is 'on' or <b>SpecifyObjectiveGradient</b> is true, fun must also return the Jacobian of the residuals.

## Used function(s)


    optimoptions
    lsqnonlin
  

## 📚 Bibliography

M. J. D. Powell, "A hybrid method for nonlinear equations", Numerical Methods for Nonlinear Algebraic Equations, 1970.
J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Example



```matlab
fun = @(x) [x(1) - 3; x(2) + 4];
[x, fval] = fsolve(fun, [0; 0])

```


## 🔗 See also

[fzero](../optimization/fzero.md), [lsqnonlin](../optimization/lsqnonlin.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
