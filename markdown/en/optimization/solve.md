# solve

Solve an optimization problem object.

## 📝 Syntax

- sol = solve(prob)
- [sol, fval, exitflag, output] = solve(prob, name, value)

## 📥 Input argument

- prob - optimization problem object.
- name, value - optional solver settings.

## 📤 Output argument

- sol - solution structure.
- fval - objective value.
- exitflag - termination indicator.

## 📄 Description

<b>solve</b> compiles a supported problem-based model and calls a direct solver.

## Used function(s)

    prob2struct
    fminsearch

## 📚 Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Example

```matlab
x = optimvar('x');
prob = optimproblem('Objective', (x - 2)^2);
[sol, fval] = solve(prob)

```

## 🔗 See also

[optimproblem](../optimization/optimproblem.md), [prob2struct](../optimization/prob2struct.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
