# ddensd

Solve neutral delay equations.

## 📝 Syntax

- sol = ddensd(ddefun, dely, delyp, history, tspan)
- sol = ddensd(ddefun, dely, delyp, history, tspan, options)

## 📄 Description

<b>ddensd</b> solves neutral delay equations. The derivative function is called as <b>f(t,y,z,zp)</b>, with delayed states and delayed slopes.

| Item       | Details                                                                               |
| ---------- | ------------------------------------------------------------------------------------- |
| Delay type | Neutral delays with delayed states and delayed slopes.                                |
| Callback   | **f(t,y,z,zp)**                                                                       |
| History    | Scalar, vector, solution structure, or function depending on the call form.           |
| Solution   | **sol** structure with **x**, **y**, **yp**, **solver**, and **deval** interpolation. |

## 💡 Example

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 See also

[dde23](../ode_solvers/dde23.md), [ddesd](../ode_solvers/ddesd.md), [ddeset](../ode_solvers/ddeset.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
