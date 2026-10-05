# quadprog

Quadratic programming.

## 📝 Syntax

- x = quadprog(H, f)
- [x, fval, exitflag, output, lambda] = quadprog(H, f, A, b, Aeq, beq, lb, ub, x0, options)
- x = quadprog(problem)

## 📥 Input argument

- H, f - quadratic and linear objective terms.
- A, b, Aeq, beq - linear inequality and equality constraints.
- lb, ub - lower and upper bounds.

## 📤 Output argument

- x - estimated solution.
- fval - objective value.
- lambda - constraint multiplier structure.

## 📄 Description


<b>quadprog</b> solves dense convex quadratic programs with linear constraints and bounds using an active-set strategy. 

The problem-structure form accepts <b>H</b>, <b>f</b>, <b>Aineq</b> or <b>A</b>, <b>bineq</b> or <b>b</b>, <b>Aeq</b>, <b>beq</b>, <b>lb</b>, <b>ub</b>, <b>x0</b> and <b>options</b>. Problem-based quadratic expressions compiled by <b>prob2struct</b> are routed to <b>quadprog</b>.

## Used function(s)


    optimoptions
    prob2struct
  

## 📚 Bibliography

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.
J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Examples



```matlab
H = [2 0; 0 2];
f = [-2; -4];
lb = [0; 0];
[x, fval] = quadprog(H, f, [], [], [], [], lb, [])

```


```matlab
y = optimvar('y', 2, 1);
prob = optimproblem('Objective', (y(1) - 1)^2 + (y(2) + 3)^2);
[sol, fval] = solve(prob, struct('y', [0; 0]));
sol.y

```


## 🔗 See also

[lsqnonneg](../optimization/lsqnonneg.md), [optimoptions](../optimization/optimoptions.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
