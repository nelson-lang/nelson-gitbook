# ddesd

Solve delay equations with state-dependent delayed times.

## 📝 Syntax

- sol = ddesd(ddefun, delays, history, tspan)
- sol = ddesd(ddefun, delays, history, tspan, options)

## 📄 Description

<b>ddesd</b> solves delay equations where <b>delays(t,y)</b> returns delayed times. Constant delay vectors are interpreted as positive lags.

| Item       | Details                                                                               |
| ---------- | ------------------------------------------------------------------------------------- |
| Delay type | Delayed times depending on **t** and **y**.                                           |
| Callback   | **f(t,y,z)**                                                                          |
| History    | Scalar, vector, solution structure, or function depending on the call form.           |
| Solution   | **sol** structure with **x**, **y**, **yp**, **solver**, and **deval** interpolation. |

## 💡 Example

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 See also

[dde23](../ode_solvers/dde23.md), [ddensd](../ode_solvers/ddensd.md), [deval](../ode_solvers/deval.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
