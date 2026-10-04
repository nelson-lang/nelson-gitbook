# optimization tutorial

Optimization module tutorial.

## 📄 Description

The <b>optimization</b> module provides direct numerical solvers and a problem-based modelling layer. Use direct solvers when the coefficient matrices, residual function, or objective function are already available. Use the problem-based layer when the model is easier to read as variables, expressions, and constraints.

| Problem type                       | Direct solver                | Typical inputs                                                       |
| ---------------------------------- | ---------------------------- | -------------------------------------------------------------------- |
| Scalar bounded minimization        | **fminbnd**                  | Objective function and finite interval.                              |
| Unconstrained minimization         | **fminunc**, **fminsearch**  | Objective function and initial point.                                |
| Zero finding                       | **fzero**                    | Function and bracket or initial point.                               |
| Linear programming                 | **linprog**                  | Linear objective, linear constraints, and bounds.                    |
| Mixed-integer linear programming   | **intlinprog**               | Linear objective, integer variable indices, constraints, and bounds. |
| Quadratic programming              | **quadprog**                 | Quadratic objective, linear constraints, and bounds.                 |
| Constrained nonlinear minimization | **fmincon**                  | Nonlinear objective, constraints, and bounds.                        |
| Least squares                      | **lsqnonneg**, **lsqnonlin** | Linear or nonlinear residual model.                                  |
| Nonlinear equations                | **fsolve**                   | Vector function and initial point.                                   |

Solver behavior is controlled with <b>optimoptions</b> or <b>optimset</b>. Use <b>optimget</b> to read an option with a fallback value. Linear and mixed-integer linear problems use the HiGHS backend when it is available. Problem-based compilation routes continuous linear, mixed-integer linear, quadratic and constrained nonlinear problems to the corresponding direct solver. Nonlinear problems with integer or binary variables are rejected explicitly.

The problem-based workflow starts with <b>optimvar</b> and <b>optimproblem</b>. Expressions and constraints are built with ordinary arithmetic. <b>solve</b> calls a supported direct solver, and <b>prob2struct</b> returns the direct-solver structure for inspection or lower-level execution.

Binary variables created with <b>optimvar</b> have default bounds 0 and 1. Integer and binary variables route linear models to <b>intlinprog</b>; continuous linear models route to <b>linprog</b>; continuous nonlinear constrained models route to <b>fmincon</b>. Maximization problems are converted internally to minimization and <b>solve</b> returns the objective value in the original problem sense.

When a direct solver proves a problem infeasible and returns no primal vector, <b>solve</b> returns a solution structure with the model variable names and empty values. This keeps diagnostic outputs such as <b>exitflag</b> and <b>output.message</b> available without failing during result unpacking.

## Used function(s)

    fminbnd
    fminunc
    fminsearch
    fzero
    fmincon
    linprog
    intlinprog
    optimproblem
    optimvar
    solve
    prob2struct

## 📚 Bibliography

Brent, R. P., Algorithms for Minimization Without Derivatives, Prentice-Hall, 1973.
Nelder, J. A. and Mead, R., A simplex method for function minimization, The Computer Journal, 1965.
Lawson, C. L. and Hanson, R. J., Solving Least Squares Problems, SIAM, 1995.
Nocedal, J. and Wright, S. J., Numerical Optimization, Springer, 2006.
Huangfu, Q. and Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018.

## 💡 Examples

Minimize a scalar function on a bounded interval.

```matlab
opts = optimset('Display', 'off');
[x, fval] = fminbnd(@(x) (x - 1.5)^2 + 0.25, -2, 4, opts)

```

Minimize an unconstrained nonlinear function.

```matlab
fun = @(x) 3*x(1)^2 + 2*x(1)*x(2) + x(2)^2 - 4*x(1) + 5*x(2);
opts = optimoptions('fminunc', 'Display', 'off');
[x, fval] = fminunc(fun, [1, 1], opts)

```

Solve a linear programming problem with nonnegative variables.

```matlab
f = [-1; -1];
A = [1 2; 4 2];
b = [4; 12];
opts = optimoptions('linprog', 'Display', 'off');
[x, fval, exitflag] = linprog(f, A, b, [], [], [0; 0], [], opts)

```

Solve a small mixed-integer linear programming problem.

```matlab
f = [-5; -4; -3];
intcon = 1:3;
A = [2 3 1; 4 1 2];
b = [5; 8];
lb = [0; 0; 0];
ub = [1; 1; 1];
opts = optimoptions('intlinprog', 'Display', 'off');
[x, fval, exitflag] = intlinprog(f, intcon, A, b, [], [], lb, ub, [], opts)

```

Build and solve a problem-based linear model.

```matlab
x = optimvar('x', 2, 'LowerBound', 0);
prob = optimproblem('Objective', -x(1) - x(2));
prob.Constraints.capacity = [1 2; 4 2] * x <= [4; 12];
problem = prob2struct(prob);
[sol, fval, exitflag] = solve(prob);
sol.x

```

## 🔗 See also

[optimoptions](../optimization/optimoptions.md), [optimproblem](../optimization/optimproblem.md), [fminunc](../optimization/fminunc.md), [fmincon](../optimization/fmincon.md), [solve](../optimization/solve.md), [linprog](../optimization/linprog.md), [intlinprog](../optimization/intlinprog.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
