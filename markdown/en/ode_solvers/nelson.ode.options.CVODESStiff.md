# nelson.ode.options.CVODESStiff

Options object for the optional CVODES BDF solver.

## 📝 Syntax

- options = nelson.ode.options.CVODESStiff()
- options = nelson.ode.options.CVODESStiff(name, value)

## 📄 Description

<b>nelson.ode.options.CVODESStiff</b> creates an options object for the <b>'cvodesstiff'</b> solver value used by the <b>ode</b> object workflow.

| Option group         | Names                                                                           | Purpose                                                        |
| -------------------- | ------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| Steps and tolerances | **InitialStep**, **MaxStep**, **MinStep**, **RelTol**, **AbsTol**, **MaxOrder** | Control adaptive BDF integration.                              |
| Output               | **Refine**, **OutputFcn**, **OutputSelection**                                  | Select returned points and optional output callbacks.          |
| Linear algebra       | **LinearSolver**, **Preconditioner**, **Jacobian**, **JPattern**                | Supply stiff-system structure and preconditioning hints.       |
| Availability         | **'cvodesstiff'**                                                               | Uses the optional BDF backend when it is compiled and enabled. |

This solver value is available only when Nelson is built with the optional SUNDIALS backend. It uses CVODES with the BDF method for stiff standard ODE problems and standard problems with a nonsingular mass matrix.

Supported options include <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>RelTol</b>, <b>AbsTol</b>, <b>Refine</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>MaxOrder</b>, <b>LinearSolver</b>, and <b>Preconditioner</b>. <b>OutputFcn</b> is called on the output points returned by the backend. <b>LinearSolver</b> accepts <b>'auto'</b>, <b>'dense'</b>, <b>'spgmr'</b>, <b>'spfgmr'</b>, <b>'spbcgs'</b>, <b>'sptfqmr'</b>, <b>'pcg'</b>, or <b>'klu'</b> when the corresponding SUNDIALS library is available. <b>Preconditioner</b> accepts <b>'auto'</b>, <b>'none'</b>, <b>'jacobi'</b>, <b>'banded'</b>, or <b>'ilu0'</b>. With a sparse <b>JPattern</b>, <b>'ilu0'</b> builds a compact sparse incomplete LU preconditioner without a dense workspace.

## 💡 Example

Create a stiff CVODES problem.

```matlab
options = nelson.ode.options.CVODESStiff('MaxOrder', 5);
problem = ode('ODEFcn', @(t,y) -20 * y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```

## 🔗 See also

[ode](../ode_solvers/ode.md), [nelson.ode.options.CVODESNonstiff](../ode_solvers/nelson.ode.options.CVODESNonstiff.md), [nelson.ode.options.IDAS](../ode_solvers/nelson.ode.options.IDAS.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
