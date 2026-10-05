# odephas2

Two-dimensional phase-plane ODE output function.

## 📝 Syntax

- status = odephas2(t, y, flag)

## 📄 Description


<b>odephas2</b> plots the second solution component against the first solution component while an ODE solver is running. 

| Flag | When called | Return value | 
| --- | --- | --- | 
| **'init'** | Before integration output starts. | **0** or **false** to continue. | 
| **''** | At accepted output points. | **0** or **false** to continue; **1** or **true** stops integration. | 
| **'done'** | After integration finishes. | Return value is ignored. | 

 

The function accepts the output callback protocol with <b>flag</b> equal to <b>'init'</b>, <b>''</b>, or <b>'done'</b>. It returns <b>0</b> to continue integration.


## 🔗 See also

[odephas3](../ode_solvers/odephas3.md), [odeplot](../ode_solvers/odeplot.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
