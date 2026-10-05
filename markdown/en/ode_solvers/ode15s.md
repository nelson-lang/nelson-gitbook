# ode15s

Stiff ODE solver entry point.

## 📝 Syntax

- [t, y] = ode15s(odefun, tspan, y0)

## 📄 Description


<b>ode15s</b> provides the stiff solver interface. The first implementation uses the shared in-tree adaptive engine. 

| Item | Details | 
| --- | --- | 
| Problem form | **y' = f(t,y)**, with initial value **y0**. | 
| Inputs | **odefun**, **tspan**, **y0**, and options created with **odeset**. | 
| Outputs | **[t,y]** arrays or a **sol** structure compatible with **deval** and **odextend**. | 
| Events | The **Events** option fills **te**, **ye**, and **ie**, or the **xe**, **ye**, and **ie** structure fields. | 



## 💡 Example


```matlab
[t, y] = ode15s(@(t,y) -20*y, [0 1], 1)
```


## 🔗 See also

[ode15i](../ode_solvers/ode15i.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
