# odeMassMatrix

Mass matrix description for ODE solvers.

## 📝 Syntax

- M = odeMassMatrix(value)
- M = odeMassMatrix(value, name, value)
- M = odeMassMatrix(name, value)

## 📄 Description

<b>odeMassMatrix</b> stores a mass matrix or mass matrix callback for the object ODE workflow.

| Object            | Purpose                                                       | Used by                                            |
| ----------------- | ------------------------------------------------------------- | -------------------------------------------------- |
| **odeMassMatrix** | Stores a reusable definition for the **ode** object workflow. | The matching **ode** property and **solve**.       |
| Validation        | Checks supported names and shapes at construction time.       | Tests and errors stay explicit before integration. |

Public properties are <b>MassMatrix</b>, <b>Singular</b>, <b>StateDependence</b>, and <b>SparsityPattern</b>. The compatible aliases <b>MassSingular</b>, <b>MStateDependence</b>, and <b>MvPattern</b> are also accepted by the constructor.

<b>Singular</b> accepts <b>yes</b>, <b>no</b>, or <b>maybe</b>. <b>StateDependence</b> accepts <b>none</b>, <b>weak</b>, or <b>strong</b>. <b>SparsityPattern</b> accepts a numeric or logical square matrix and is passed to the solver options.

Without a mass matrix, defaults are <b>Singular='maybe'</b> and <b>StateDependence='weak'</b>. For a numeric mass matrix, Nelson infers <b>Singular</b> and uses <b>StateDependence='none'</b> unless values are supplied explicitly.

## 💡 Examples

```matlab
M = odeMassMatrix(2)
```

Mass matrix in the object workflow.

```matlab
M = odeMassMatrix('MassMatrix', 2, 'Singular', 'no');
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, 'MassMatrix', M);
result = solve(problem, 0, 1)
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
