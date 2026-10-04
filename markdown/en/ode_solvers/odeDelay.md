# odeDelay

Delay definition object for ODE workflows.

## 📝 Syntax

- D = odeDelay()
- D = odeDelay(name, value)

## 📄 Description

<b>odeDelay</b> stores delay-related settings for retarded delay equations solved through the <b>ode</b> object.

| Object       | Purpose                                                       | Used by                                            |
| ------------ | ------------------------------------------------------------- | -------------------------------------------------- |
| **odeDelay** | Stores a reusable definition for the **ode** object workflow. | The matching **ode** property and **solve**.       |
| Validation   | Checks supported names and shapes at construction time.       | Tests and errors stay explicit before integration. |

The current scope supports positive constant or function-handle <b>ValueDelay</b> and <b>SlopeDelay</b> entries with numeric or function-handle <b>History</b>. Delay functions are evaluated as <b>d(t,y)</b> or <b>d(t,y,p)</b> and must reference a known past state. The ODE function receives delayed values as <b>f(t, y, z)</b>. When slope delays are present it receives <b>f(t, y, z, zp)</b>, where columns of <b>zp</b> contain delayed slopes.

Events, mass matrices, and direct sensitivities are supported for explicit or linearly implicit delayed equations. Adjoint sensitivities, separated complex parts, and fully implicit delayed equations are not supported yet and report explicit errors.

## 🔗 See also

[ode](../ode_solvers/ode.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
