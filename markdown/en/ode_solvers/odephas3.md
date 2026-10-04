# odephas3

Three-dimensional phase-plane ODE output function.

## 📝 Syntax

- status = odephas3(t, y, flag)

## 📄 Description

<b>odephas3</b> plots the first three solution components as a three-dimensional phase trajectory while an ODE solver is running.

| Flag       | When called                       | Return value                                                         |
| ---------- | --------------------------------- | -------------------------------------------------------------------- |
| **'init'** | Before integration output starts. | **0** or **false** to continue.                                      |
| **''**     | At accepted output points.        | **0** or **false** to continue; **1** or **true** stops integration. |
| **'done'** | After integration finishes.       | Return value is ignored.                                             |

The function accepts the output callback protocol with <b>flag</b> equal to <b>'init'</b>, <b>''</b>, or <b>'done'</b>. It returns <b>0</b> to continue integration.

## 🔗 See also

[odephas2](../ode_solvers/odephas2.md), [odeplot](../ode_solvers/odeplot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
