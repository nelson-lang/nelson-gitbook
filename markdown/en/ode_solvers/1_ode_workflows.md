# ode workflows

ODE examples and object workflow.

## 📄 Description

The function workflow returns arrays or a solution structure. The object workflow stores the problem in an <b>ode</b> instance and returns a result object from <b>solve</b>.

| Workflow        | Main calls                        | When to use                                                          |
| --------------- | --------------------------------- | -------------------------------------------------------------------- |
| Function        | **ode45**, **ode15s**, **ode15i** | Compact scripts that return arrays or a solution structure.          |
| Object          | **ode**, **solve**, **deval**     | Reusable problem definitions with solver options and result objects. |
| Post-processing | **deval**, **odextend**           | Interpolate or continue a computed solution.                         |

Use a solution structure with <b>deval</b> for interpolation and <b>odextend</b> to continue an integration. Use <b>Events</b> to locate zero crossings, <b>Mass</b> for mass matrix systems, and <b>Jacobian</b> to help stiff solvers.

## 💡 Examples

Function workflow with interpolation.

```matlab
sol = ode45(@(t,y) -y, [0 1], 1);
yhalf = deval(sol, 0.5)
```

Object workflow.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
result = solve(problem, 0, 1);
value = deval(result, 0.5)
```

Refined output and statistics.

```matlab
options = odeset('Refine', 4, 'Stats', 'on');
[t, y] = ode45(@(t,y) y, [0 1], 1, options)
```

## 🔗 See also

[ode](../ode_solvers/ode.md), [deval](../ode_solvers/deval.md), [odextend](../ode_solvers/odextend.md), [odeset](../ode_solvers/odeset.md), [ode complex workflow tutorial](../ode_solvers/ode complex workflow tutorial.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
