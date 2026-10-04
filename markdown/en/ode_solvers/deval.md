# deval

Evaluate an ODE solution.

## 📝 Syntax

- y = deval(sol, t)
- [y, yp] = deval(sol, t)

## 📄 Description

<b>deval</b> interpolates a solution structure or a result object returned by an ODE solver.

| Item              | Details                                                                              |
| ----------------- | ------------------------------------------------------------------------------------ |
| Input solution    | Structure or result object returned by ODE, DDE, or BVP solvers.                     |
| Evaluation points | **t** or **x** values inside the computed interval.                                  |
| Outputs           | **y** values and optional **yp** derivative values, one column per evaluation point. |
| Use case          | Dense output, plotting, post-processing, and solution comparison.                    |

The result has one row per state variable and one column per evaluation point. This shape is used for both row and column vectors of evaluation times. Evaluation points must lie inside the solution interval. The optional second output returns the derivative at the same points.

## 💡 Example

```matlab
sol = ode45(@(t,y) -y, [0 1], 1);
[y, yp] = deval(sol, [0; 0.5; 1])
```

## 🔗 See also

[odextend](../ode_solvers/odextend.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
