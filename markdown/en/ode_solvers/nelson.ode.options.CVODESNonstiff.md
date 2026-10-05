# nelson.ode.options.CVODESNonstiff

Options object for the optional CVODES Adams solver.

## 📝 Syntax

- options = nelson.ode.options.CVODESNonstiff()
- options = nelson.ode.options.CVODESNonstiff(name, value)

## 📄 Description


<b>nelson.ode.options.CVODESNonstiff</b> creates an options object for the <b>'cvodesnonstiff'</b> solver value used by the <b>ode</b> object workflow. 

| Option group | Names | Purpose | 
| --- | --- | --- | 
| Steps and tolerances | **InitialStep**, **MaxStep**, **MinStep**, **RelTol**, **AbsTol**, **MaxOrder** | Control adaptive Adams integration. | 
| Output | **Refine**, **OutputFcn**, **OutputSelection** | Select returned points and optional output callbacks. | 
| Linear algebra | **LinearSolver**, **Preconditioner** | Choose dense, iterative, or available sparse support and preconditioning. | 
| Availability | **'cvodesnonstiff'** | Uses the optional Adams backend when it is compiled and enabled. | 

 

This solver value is available only when Nelson is built with the optional SUNDIALS backend. It uses CVODES with the Adams method for nonstiff standard ODE problems. 

Supported options include <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>RelTol</b>, <b>AbsTol</b>, <b>Refine</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>MaxOrder</b>, <b>LinearSolver</b>, and <b>Preconditioner</b>. <b>OutputFcn</b> is called on the output points returned by the backend. <b>LinearSolver</b> accepts dense, iterative, and optional sparse direct SUNDIALS values when the corresponding library is available. <b>Preconditioner</b> accepts <b>'auto'</b>, <b>'none'</b>, <b>'jacobi'</b>, <b>'banded'</b>, or <b>'ilu0'</b>. With a sparse <b>JPattern</b>, <b>'ilu0'</b> builds a compact sparse incomplete LU preconditioner without a dense workspace.

## 💡 Example

Create a nonstiff CVODES problem.

```matlab
options = nelson.ode.options.CVODESNonstiff('RelTol', 1e-6);
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```


## 🔗 See also

[ode](../ode_solvers/ode.md), [nelson.ode.options.CVODESStiff](../ode_solvers/nelson.ode.options.CVODESStiff.md), [nelson.ode.options.IDAS](../ode_solvers/nelson.ode.options.IDAS.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
