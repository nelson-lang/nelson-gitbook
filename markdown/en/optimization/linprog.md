# linprog

Linear programming.

## 📝 Syntax

- x = linprog(f, A, b)
- [x, fval, exitflag, output, lambda] = linprog(f, A, b, Aeq, beq, lb, ub, options)
- [x, fval, exitflag, output, lambda] = linprog(problem)

## 📥 Input argument

- f - linear objective coefficients.
- A, b - linear inequality constraints A\*x <= b.
- Aeq, beq - linear equality constraints Aeq\*x = beq.
- lb, ub - lower and upper variable bounds.
- options - solver options created with optimoptions or optimset.

## 📤 Output argument

- x - computed minimizer.
- fval - objective value f'\*x.
- exitflag - termination indicator.
- output - diagnostic structure.
- lambda - structure with lower, upper, ineqlin and eqlin multiplier estimates.

## 📄 Description


<b>linprog</b> solves linear optimization problems with linear constraints and bounds. Nelson uses HiGHS when available. 

Supported structures include <b>f</b>, <b>Aineq</b> or <b>A</b>, <b>bineq</b> or <b>b</b>, <b>Aeq</b>, <b>beq</b>, <b>lb</b>, <b>ub</b>, <b>x0</b> and <b>options</b>. The <b>output</b> structure reports the algorithm, normalized backend status, primal solution status, message, constraint violation, iterations and first-order residual estimate. The <b>lambda</b> structure is filled for continuous linear programs from backend dual information. 

Options such as <b>Display</b>, <b>MaxTime</b>, <b>MaxIterations</b>, <b>LPMaxIterations</b>, <b>ConstraintTolerance</b>, <b>LPOptimalityTolerance</b>, <b>LPPreprocess</b> and <b>RootLPAlgorithm</b> are converted to HiGHS options when possible. Other recognized optimization options are accepted and ignored when no backend equivalent exists.

## Used function(s)


    optimoptions
    prob2struct
  

## 📚 Bibliography

Dantzig, G. B., Linear Programming and Extensions, Princeton University Press, 1963.
Huangfu, Q. and Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018.
Nocedal, J. and Wright, S. J., Numerical Optimization, Springer, 2006.

## 💡 Example



```matlab
f = [-1; -1];
A = [1 2; 4 2];
b = [4; 12];
opts = optimoptions('linprog', 'Display', 'off');
[x, fval, exitflag, output, lambda] = linprog(f, A, b, [], [], [0; 0], [], opts)

```


## 🔗 See also

[intlinprog](../optimization/intlinprog.md), [quadprog](../optimization/quadprog.md), [optimoptions](../optimization/optimoptions.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
