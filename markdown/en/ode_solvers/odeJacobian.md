# odeJacobian

Jacobian description for ODE solvers.

## 📝 Syntax

- J = odeJacobian(value)
- J = odeJacobian(value, name, value)
- J = odeJacobian(name, value)

## 📄 Description

<b>odeJacobian</b> stores a Jacobian function, matrix, or finite-difference pattern for the object ODE workflow.

| Object          | Purpose                                                       | Used by                                            |
| --------------- | ------------------------------------------------------------- | -------------------------------------------------- |
| **odeJacobian** | Stores a reusable definition for the **ode** object workflow. | The matching **ode** property and **solve**.       |
| Validation      | Checks supported names and shapes at construction time.       | Tests and errors stay explicit before integration. |

Public properties are <b>Jacobian</b> and <b>SparsityPattern</b>. The compatible alias <b>Pattern</b> is accepted by the constructor. The compatible <b>Constant</b> hint is also accepted and passed to solver options.

## 💡 Examples

```matlab
J = odeJacobian(-1)
```

Jacobian pattern for the object workflow.

```matlab
J = odeJacobian('SparsityPattern', [1 0; 0 1]);
problem = ode('ODEFcn', @(t,y) [-10*y(1); -20*y(2)], 'InitialValue', [1; 2], 'Jacobian', J);
result = solve(problem, 0, 0.2)
```

Constant Jacobian hint.

```matlab
J = odeJacobian(-25, 'Constant', 'on');
problem = ode('ODEFcn', @(t,y) -25*y, 'InitialValue', 1, 'Jacobian', J);
result = solve(problem, 0, 0.2)
```

## 🔗 See also

[ode](../ode_solvers/ode.md), [odeset](../ode_solvers/odeset.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
