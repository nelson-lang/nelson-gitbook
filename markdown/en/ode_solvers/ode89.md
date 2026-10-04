# ode89

High order nonstiff ODE solver.

## 📝 Syntax

- [t, y] = ode89(odefun, tspan, y0)

## 📄 Description

<b>ode89</b> solves nonstiff initial value problems with the shared adaptive engine.

| Item         | Details                                                                                                     |
| ------------ | ----------------------------------------------------------------------------------------------------------- |
| Problem form | **y' = f(t,y)**, with initial value **y0**.                                                                 |
| Inputs       | **odefun**, **tspan**, **y0**, and options created with **odeset**.                                         |
| Outputs      | **[t,y]** arrays or a **sol** structure compatible with **deval** and **odextend**.                         |
| Events       | The **Events** option fills **te**, **ye**, and **ie**, or the **xe**, **ye**, and **ie** structure fields. |

## 💡 Example

```matlab
[t, y] = ode89(@(t,y) -y, [0 1], 1)
```

## 🔗 See also

[ode78](../ode_solvers/ode78.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
