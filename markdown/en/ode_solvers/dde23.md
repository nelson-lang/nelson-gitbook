# dde23

Solve delay equations with constant delays.

## 📝 Syntax

- sol = dde23(ddefun, delays, history, tspan)
- sol = dde23(ddefun, delays, history, tspan, options)

## 📄 Description

<b>dde23</b> solves delay equations where each delay is a positive constant lag. The derivative function is called as <b>f(t,y,z)</b>, where each column of <b>z</b> is a delayed state.

| Item       | Details                                                                               |
| ---------- | ------------------------------------------------------------------------------------- |
| Delay type | Positive constant lags.                                                               |
| Callback   | **f(t,y,z)**                                                                          |
| History    | Scalar, vector, solution structure, or function depending on the call form.           |
| Solution   | **sol** structure with **x**, **y**, **yp**, **solver**, and **deval** interpolation. |

## 💡 Examples

Constant history.

```matlab
sol = dde23(@(t,y,z) -y + z, 0.1, 1, [0 1]);
y = deval(sol, 0.5)
```

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 See also

[ddesd](../ode_solvers/ddesd.md), [ddensd](../ode_solvers/ddensd.md), [ddeset](../ode_solvers/ddeset.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
