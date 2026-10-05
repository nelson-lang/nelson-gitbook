# ode23

Low order nonstiff ODE solver.

## 📝 Syntax

- [t, y] = ode23(odefun, tspan, y0)
- sol = ode23(odefun, tspan, y0, options)

## 📄 Description


<b>ode23</b> solves an initial value problem with adaptive explicit steps. 

| Item | Details | 
| --- | --- | 
| Problem form | **y' = f(t,y)**, with initial value **y0**. | 
| Inputs | **odefun**, **tspan**, **y0**, and options created with **odeset**. | 
| Outputs | **[t,y]** arrays or a **sol** structure compatible with **deval** and **odextend**. | 
| Events | The **Events** option fills **te**, **ye**, and **ie**, or the **xe**, **ye**, and **ie** structure fields. | 



## 💡 Example

Basic solve.

```matlab
[t, y] = ode23(@(t,y) -y, [0 1], 1)
```


## 🔗 See also

[ode45](../ode_solvers/ode45.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
