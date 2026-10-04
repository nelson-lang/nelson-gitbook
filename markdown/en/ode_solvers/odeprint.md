# odeprint

Command-window ODE output function.

## 📝 Syntax

- status = odeprint(t, y, flag)

## 📄 Description

<b>odeprint</b> is an output callback for ODE solvers. It prints accepted output points and returns <b>0</b> to continue integration.

| Flag       | When called                       | Return value                                                         |
| ---------- | --------------------------------- | -------------------------------------------------------------------- |
| **'init'** | Before integration output starts. | **0** or **false** to continue.                                      |
| **''**     | At accepted output points.        | **0** or **false** to continue; **1** or **true** stops integration. |
| **'done'** | After integration finishes.       | Return value is ignored.                                             |

## 🔗 See also

[odeset](../ode_solvers/odeset.md), [odeplot](../ode_solvers/odeplot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
