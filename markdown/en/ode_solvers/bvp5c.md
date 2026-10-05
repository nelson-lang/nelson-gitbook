# bvp5c

Solve boundary value problems with mesh refinement.

## 📝 Syntax

- sol = bvp5c(odefun, bcfun, solinit)
- sol = bvp5c(odefun, bcfun, solinit, options)

## 📄 Description


<b>bvp5c</b> solves first-order boundary value problems using the BVP collocation engine with an additional mesh refinement pass. 

| Item | Details | 
| --- | --- | 
| Problem form | First-order system **y' = f(x,y)** with boundary residuals **bcfun(ya,yb)**. | 
| Initialization | **bvpinit** supplies the initial mesh, solution guess, and optional unknown parameters. | 
| Method | Collocation with an additional mesh refinement pass. | 
| Solution | **sol** structure with **x**, **y**, **yp**, **parameters**, and **stats**. | 

 

Options created with <b>bvpset</b> can provide <b>FJacobian</b>, <b>BCJacobian</b>, <b>Vectorized</b>, and <b>SingularTerm</b>. When both Jacobian callbacks are supplied, the Newton iteration uses them instead of finite differences. Solution stats include <b>niterations</b>, <b>nmeshpoints</b>, <b>residualNorm</b>, <b>residualRms</b>, <b>nrefinements</b>, <b>maxDefect</b>, <b>rmsDefect</b>, and, when available, <b>nfevals</b>.

## 💡 Example

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```


## 🔗 See also

[bvp4c](../ode_solvers/bvp4c.md), [bvpinit](../ode_solvers/bvpinit.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
