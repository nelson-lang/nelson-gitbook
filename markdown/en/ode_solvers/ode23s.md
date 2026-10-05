# ode23s

Stiff ODE solver entry point.

## 📝 Syntax

- [t, y] = ode23s(odefun, tspan, y0)

## 📄 Description


<b>ode23s</b> provides a stiff solver interface backed by the shared adaptive engine. 

| Item | Details | 
| --- | --- | 
| Problem form | **y' = f(t,y)**, with initial value **y0**. | 
| Inputs | **odefun**, **tspan**, **y0**, and options created with **odeset**. | 
| Outputs | **[t,y]** arrays or a **sol** structure compatible with **deval** and **odextend**. | 
| Events | The **Events** option fills **te**, **ye**, and **ie**, or the **xe**, **ye**, and **ie** structure fields. | 



## 💡 Example


```matlab
[t, y] = ode23s(@(t,y) -20*y, [0 1], 1)
```


## 🔗 See also

[ode23t](../ode_solvers/ode23t.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
