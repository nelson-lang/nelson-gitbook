# bvp4c

Solve boundary value problems with fourth-order collocation.

## 📝 Syntax

- sol = bvp4c(odefun, bcfun, solinit)
- sol = bvp4c(odefun, bcfun, solinit, options)

## 📄 Description

<b>bvp4c</b> solves first-order boundary value problems from an initial mesh and guess produced by <b>bvpinit</b>.

| Item           | Details                                                                                 |
| -------------- | --------------------------------------------------------------------------------------- |
| Problem form   | First-order system **y' = f(x,y)** with boundary residuals **bcfun(ya,yb)**.            |
| Initialization | **bvpinit** supplies the initial mesh, solution guess, and optional unknown parameters. |
| Method         | Fourth-order collocation.                                                               |
| Solution       | **sol** structure with **x**, **y**, **yp**, **parameters**, and **stats**.             |

Options created with <b>bvpset</b> can provide <b>FJacobian</b>, <b>BCJacobian</b>, <b>Vectorized</b>, and <b>SingularTerm</b>. When both Jacobian callbacks are supplied, the Newton iteration uses them instead of finite differences. Solution stats include <b>niterations</b>, <b>nmeshpoints</b>, <b>residualNorm</b>, <b>residualRms</b>, <b>nrefinements</b>, <b>maxDefect</b>, <b>rmsDefect</b>, and, when available, <b>nfevals</b>.

## 💡 Example

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 See also

[bvp5c](../ode_solvers/bvp5c.md), [bvpinit](../ode_solvers/bvpinit.md), [bvpset](../ode_solvers/bvpset.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
