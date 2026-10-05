# decic

Compute consistent initial conditions for implicit ODEs.

## 📝 Syntax

- [y0new, yp0new] = decic(odefun, t0, y0, fixed\_y0, yp0, fixed\_yp0)
- [y0new, yp0new, resnrm] = decic(odefun, t0, y0, fixed\_y0, yp0, fixed\_yp0, options)

## 📄 Description


<b>decic</b> adjusts the free components of <b>y0</b> and <b>yp0</b> so that the residual <b>odefun(t0,y0,yp0)</b> is small. Components marked by <b>fixed\_y0</b> and <b>fixed\_yp0</b> are kept fixed. 

| Item | Details | 
| --- | --- | 
| Problem form | Fully implicit residual **F(t,y,yp) = 0**. | 
| Fixed components | **fixed\_y0** and **fixed\_yp0** mark values that must not change. | 
| Outputs | Consistent initial values **y0mod** and **yp0mod**. | 
| Used with | **ode15i** or an **ode** object with a fully implicit equation type. | 



## 💡 Example


```matlab
f = @(t,y,yp) yp + y;
[y0, yp0] = decic(f, 0, 1, 1, 0, 0);
[t, y] = ode15i(f, [0 1], y0, yp0)
```


## 🔗 See also

[ode15i](../ode_solvers/ode15i.md), [odeset](../ode_solvers/odeset.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
