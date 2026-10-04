# fminunc

Unconstrained nonlinear minimization.

## 📝 Syntax

- x = fminunc(fun, x0)
- x = fminunc(fun, x0, options)
- x = fminunc(problem)
- [x, fval, exitflag, output, grad, hessian] = fminunc(\_\_\_)

## 📥 Input argument

- fun - Objective function returning a real scalar. With gradient options enabled, it can also return the gradient and Hessian.
- x0 - Initial scalar, vector or matrix point.
- options - Options created with optimoptions or optimset.
- problem - Structure with fields objective, x0, solver and options.

## 📤 Output argument

- x - Computed minimizer.
- fval - Objective value at x.
- exitflag - Termination indicator.
- output - Diagnostic structure with iterations, funcCount, stepsize, algorithm, firstorderopt and message.
- grad - Gradient at x.
- hessian - Approximate or user supplied Hessian at x.

## 📄 Description

<b>fminunc</b> minimizes a scalar nonlinear objective without constraints.

The default <b>quasi-newton</b> algorithm uses BFGS, DFP, steepest descent, or limited-memory BFGS depending on <b>HessianApproximation</b> and legacy <b>HessUpdate</b> options. The <b>trust-region</b> algorithm uses user gradients, optional objective Hessians, Hessian multiply functions and truncated conjugate gradients.

Accepted display modes are <b>off</b>, <b>none</b>, <b>final</b>, <b>final-detailed</b>, <b>notify</b>, <b>notify-detailed</b>, <b>iter</b> and <b>iter-detailed</b>.

## Used function(s)

    optimoptions
    optimset

## 📚 Bibliography

Broyden, C. G., The convergence of a class of double-rank minimization algorithms, IMA Journal of Applied Mathematics, 1970.
Fletcher, R., Practical Methods of Optimization, Wiley, 1987.
Liu, D. C. and Nocedal, J., On the limited memory BFGS method for large scale optimization, Mathematical Programming, 1989.
Nocedal, J. and Wright, S. J., Numerical Optimization, Springer, 2006.

## 💡 Examples

Minimize a quadratic polynomial.

```matlab
fun = @(x) 3*x(1)^2 + 2*x(1)*x(2) + x(2)^2 - 4*x(1) + 5*x(2);
[x, fval] = fminunc(fun, [1, 1])

```

Use a gradient with the trust-region algorithm.

```matlab
function [f, g] = rosenwithgrad(x)
  f = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
  g = [-400*(x(2)-x(1)^2)*x(1) - 2*(1-x(1)); 200*(x(2)-x(1)^2)];
end
opts = optimoptions('fminunc', 'Algorithm', 'trust-region', 'SpecifyObjectiveGradient', true);
x = fminunc(@rosenwithgrad, [-1; 2], opts)

```

## 🔗 See also

[fmincon](../optimization/fmincon.md), [optimoptions](../optimization/optimoptions.md), [fminsearch](../optimization/fminsearch.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
