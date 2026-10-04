# optimproblem

Create an optimization problem object.

## 📝 Syntax

- prob = optimproblem()
- prob = optimproblem(name, value)

## 📥 Input argument

- name, value - problem properties such as Objective, Constraints, Description or ObjectiveSense.

## 📤 Output argument

- prob - optimization problem object.

## 📄 Description

<b>optimproblem</b> creates a problem-based model. It can be converted with prob2struct or solved directly for supported unconstrained models.

## Used function(s)

    optimvar
    solve
    prob2struct

## 📚 Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Example

```matlab
x = optimvar('x');
prob = optimproblem('Objective', (x - 2)^2);
[sol, fval] = solve(prob)

```

## 🔗 See also

[optimvar](../optimization/optimvar.md), [solve](../optimization/solve.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
