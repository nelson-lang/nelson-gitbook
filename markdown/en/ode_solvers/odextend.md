# odextend

Extend an ODE solution.

## 📝 Syntax

- solout = odextend(sol, odefun, tfinal)
- solout = odextend(sol, odefun, tfinal, options)

## 📄 Description

<b>odextend</b> continues a solution from its last computed point to a new final time.

| Item           | Details                                                                                   |
| -------------- | ----------------------------------------------------------------------------------------- |
| Input solution | Existing **sol** structure returned by an ODE solver.                                     |
| Continuation   | Extends the solution to a new final time using the same problem definition.               |
| Options        | Optional solver options can update tolerances, events, output callbacks, and step limits. |
| Result         | A new **sol** structure compatible with **deval**.                                        |

When <b>odefun</b> is empty, the function stored in the input solution is reused. If the requested final time is already covered by the solution interval, the input solution is returned. Extending in the opposite direction is an error. Event fields are preserved and extended when event data exists. Solutions without event data do not gain empty <b>xe</b>, <b>ye</b>, or <b>ie</b> fields.

## 💡 Example

```matlab
sol = ode45(@(t,y) -y, [0 0.5], 1);
sol = odextend(sol, [], 1)
```

## 🔗 See also

[deval](../ode_solvers/deval.md), [odeset](../ode_solvers/odeset.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
