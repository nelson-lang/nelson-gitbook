# ode45

Nonstiff ODE solver.

## 📝 Syntax

- [t, y] = ode45(odefun, tspan, y0)
- sol = ode45(odefun, tspan, y0, options)

## 📄 Description

<b>ode45</b> solves an initial value problem with adaptive explicit steps.

| Item         | Details                                                                                                     |
| ------------ | ----------------------------------------------------------------------------------------------------------- |
| Problem form | **y' = f(t,y)**, with initial value **y0**.                                                                 |
| Inputs       | **odefun**, **tspan**, **y0**, and options created with **odeset**.                                         |
| Outputs      | **[t,y]** arrays or a **sol** structure compatible with **deval** and **odextend**.                         |
| Events       | The **Events** option fills **te**, **ye**, and **ie**, or the **xe**, **ye**, and **ie** structure fields. |

## 💡 Example

Exponential decay.

```matlab
[t, y] = ode45(@(t,y) -y, [0 1], 1)
```

## 🔗 See also

[odeset](../ode_solvers/odeset.md), [deval](../ode_solvers/deval.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
