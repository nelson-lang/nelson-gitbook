# fmincon

Constrained nonlinear minimization.

## 📝 Syntax

- x = fmincon(fun, x0, A, b)
- x = fmincon(fun, x0, A, b, Aeq, beq, lb, ub, nonlcon, options)
- [x, fval, exitflag, output, lambda, grad, hessian] = fmincon(\_\_\_)
- x = fmincon(problem)

## 📥 Input argument

- fun - objective function returning a real scalar.
- x0 - initial point.
- A, b - linear inequalities A\*x <= b.
- Aeq, beq - linear equalities Aeq\*x = beq.
- lb, ub - lower and upper bounds.
- nonlcon - nonlinear constraint function returning c and ceq.
- options - solver options created with optimoptions or optimset.

## 📤 Output argument

- x - computed minimizer.
- fval - objective value at x.
- exitflag - termination indicator.
- output - diagnostic structure.
- lambda - Lagrange multiplier structure.
- grad - objective gradient at x.
- hessian - approximate Hessian of the Lagrangian.

## 📄 Description


<b>fmincon</b> solves constrained nonlinear minimization problems with linear constraints, bounds and nonlinear constraints. 

The <b>sqp</b> path solves quadratic subproblems with active linearized constraints, BFGS Hessian updates and merit-function line search. Nonlinear constraints are handled directly in the SQP subproblem through finite-difference or user-supplied Jacobians. 

The <b>interior-point</b> path builds an interior starting point with logarithmic barrier continuation before entering the nonlinear SQP phase. The <b>active-set</b> path keeps an explicit working set and reports active linear rows in <b>output.activeconstraints</b>. The <b>sqp-legacy</b> path uses a separate conservative SQP loop with active-set subproblems and stricter merit decrease. 

For badly scaled problems, set <b>ScaleProblem</b> to <b>obj-and-constr</b> and provide <b>TypicalX</b>. Nelson scales SQP subproblems, initializes the Hessian with the variable scales and applies scaled merit decrease tests. 

If nonlinear SQP cannot recover feasibility, Nelson runs a restoration phase based on penalty continuation and reports <b>output.restoration</b> when that phase supplies the returned point. 

The <b>trust-region-reflective</b> path supports bound and linear-equality problems with user gradients, Hessian matrices, Hessian callbacks or Hessian multiply callbacks, projected truncated conjugate gradients, diagonal or band preconditioning, and trust-region radius updates. The <b>output</b> structure includes conjugate-gradient diagnostics such as <b>pcgflag</b>, <b>pcgresidual</b> and <b>trustregionradius</b>. 

Accepted display modes include <b>off</b>, <b>none</b>, <b>final</b>, <b>final-detailed</b>, <b>notify</b>, <b>notify-detailed</b>, <b>iter</b> and <b>iter-detailed</b>. Setting <b>Diagnostics</b> to <b>on</b> prints a summary of variables, functions, constraints and selected algorithm before solving. 

Default options depend on the algorithm: <b>interior-point</b> uses <b>MaxIterations</b> 1000, <b>MaxFunctionEvaluations</b> 3000, <b>StepTolerance</b> 1e-10 and <b>SubproblemAlgorithm</b> 'factorization'; the other algorithms use <b>MaxIterations</b> 400, <b>MaxFunctionEvaluations</b> '100\*numberOfVariables' and <b>StepTolerance</b> 1e-6. 

The <b>exitflag</b> output reports 1 (first-order optimality satisfied), 2 (step below StepTolerance), 3 (objective change below FunctionTolerance, trust-region-reflective), 0 (iteration or evaluation limit), -1 (stopped by output function), -2 (no feasible point found) or -3 (objective below ObjectiveLimit).

## Used function(s)


    optimoptions
    optimset
    quadprog
    fminsearch
  

## 📚 Bibliography

Powell, M. J. D., A fast algorithm for nonlinearly constrained optimization calculations, Lecture Notes in Mathematics, 1978.
Han, S. P., A globally convergent method for nonlinear programming, Journal of Optimization Theory and Applications, 1977.
Gill, P. E., Murray, W. and Wright, M. H., Practical Optimization, Academic Press, 1981.
Nocedal, J. and Wright, S. J., Numerical Optimization, Springer, 2006.
Byrd, R. H., Schnabel, R. B. and Shultz, G. A., Approximate solution of the trust region problem by minimization over two-dimensional subspaces, Mathematical Programming, 1988.
Conn, A. R., Gould, N. I. M. and Toint, P. L., Trust Region Methods, SIAM, 2000.

## 💡 Examples

Minimize Rosenbrock's function on the unit disk.

```matlab
function [c, ceq] = unitdisk(x)
  c = x(1)^2 + x(2)^2 - 1;
  ceq = [];
end
fun = @(x) 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
opts = optimoptions('fmincon', 'Display', 'off', 'Algorithm', 'sqp');
[x, fval] = fmincon(fun, [0; 0], [], [], [], [], [], [], @unitdisk, opts)

```
Use linear constraints.

```matlab
fun = @(x) 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
A = [1 2];
b = 1;
[x, fval, exitflag] = fmincon(fun, [-1; 2], A, b)

```
Use a trust-region-reflective Hessian matrix.

```matlab
function [f, g] = quadobj(x)
  f = (x(1) - 1)^2 + (x(2) - 2)^2;
  g = [2*(x(1) - 1); 2*(x(2) - 2)];
end
opts = optimoptions('fmincon', 'Display', 'off', 'Algorithm', 'trust-region-reflective', ...
  'SpecifyObjectiveGradient', true, 'Hessian', 2*eye(2));
[x, fval] = fmincon(@quadobj, [0; 0], [], [], [], [], [0; 0], [3; 3], [], opts)

```
Use a trust-region-reflective Hessian multiply function.

```matlab
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

```


## 🔗 See also

[optimoptions](../optimization/optimoptions.md), [fminsearch](../optimization/fminsearch.md), [quadprog](../optimization/quadprog.md), [solve](../optimization/solve.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
