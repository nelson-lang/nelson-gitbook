# bvpset

Create or update BVP options.

## 📝 Syntax

- options = bvpset()
- options = bvpset(name, value)

## 📄 Description

<b>bvpset</b> creates options for boundary value problem solvers.

| Option                                      | Purpose                                                        |
| ------------------------------------------- | -------------------------------------------------------------- |
| **RelTol**, **AbsTol**                      | Solver tolerances.                                             |
| **NMax**                                    | Maximum number of mesh points.                                 |
| **FJacobian**, **BCJacobian**               | Analytical Jacobians for the equation and boundary conditions. |
| **Vectorized**, **SingularTerm**, **Stats** | Vectorization, singular term, and statistics display.          |

Supported names include <b>AbsTol</b>, <b>RelTol</b>, <b>NMax</b>, <b>Stats</b>, <b>Vectorized</b>, <b>FJacobian</b>, <b>BCJacobian</b>, and <b>SingularTerm</b>. <b>FJacobian</b> and <b>BCJacobian</b> are used together by the Newton iteration when both callbacks are present.

## 💡 Example

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 See also

[bvpget](../ode_solvers/bvpget.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
