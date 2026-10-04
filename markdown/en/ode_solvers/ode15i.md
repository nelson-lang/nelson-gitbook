# ode15i

Implicit ODE solver entry point.

## 📝 Syntax

- [t, y] = ode15i(odefun, tspan, y0, yp0)

## 📄 Description

<b>ode15i</b> solves residual problems of the form <b>F(t,y,yp)=0</b>.

| Item           | Details                                                                          |
| -------------- | -------------------------------------------------------------------------------- |
| Problem form   | Implicit residual **F(t,y,yp)=0**.                                               |
| Inputs         | **odefun**, **tspan**, **y0**, **yp0**, and options created with **odeset**.     |
| Outputs        | **[t,y]** arrays or a **sol** structure with slopes available through **deval**. |
| Initialization | Use **decic** to adjust consistent initial conditions.                           |

## 💡 Example

```matlab
[t, y] = ode15i(@(t,y,yp) yp + y, [0 1], 1, -1)
```

## 🔗 See also

[ode15s](../ode_solvers/ode15s.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
