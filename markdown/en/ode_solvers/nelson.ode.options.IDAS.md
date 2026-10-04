# nelson.ode.options.IDAS

Options object for the optional IDAS BDF solver.

## 📝 Syntax

- options = nelson.ode.options.IDAS()
- options = nelson.ode.options.IDAS(name, value)

## 📄 Description

<b>nelson.ode.options.IDAS</b> creates an options object for the <b>'idas'</b> solver value used by the <b>ode</b> object workflow.

| Option group         | Names                                                                           | Purpose                                                                   |
| -------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| Steps and tolerances | **InitialStep**, **MaxStep**, **MinStep**, **RelTol**, **AbsTol**, **MaxOrder** | Control adaptive BDF integration for residual equations.                  |
| Consistent initials  | **ComputeConsistentInitialConditions**                                          | Request consistent **y0** and **yp0** for fully implicit problems.        |
| Linear algebra       | **LinearSolver**, **Preconditioner**, **Jacobian**, **JPattern**                | Supply residual-system structure and preconditioning hints.               |
| Availability         | **'idas'**                                                                      | Uses the optional fully implicit backend when it is compiled and enabled. |

This solver value is available only when Nelson is built with the optional SUNDIALS backend. It uses IDAS with the BDF method for fully implicit residual problems <b>F(t,y,yp)=0</b>.

Supported options include <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>RelTol</b>, <b>AbsTol</b>, <b>Refine</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>MaxOrder</b>, <b>ComputeConsistentInitialConditions</b>, <b>LinearSolver</b>, and <b>Preconditioner</b>. <b>OutputFcn</b> is called on the output points returned by the backend. <b>LinearSolver</b> accepts dense, iterative, and optional sparse direct SUNDIALS values when the corresponding library is available. <b>Preconditioner</b> accepts <b>'auto'</b>, <b>'none'</b>, <b>'jacobi'</b>, <b>'banded'</b>, or <b>'ilu0'</b>. With a sparse <b>JPattern</b>, <b>'ilu0'</b> builds a compact sparse incomplete LU preconditioner without a dense workspace.

## 💡 Example

Create an IDAS residual problem.

```matlab
options = nelson.ode.options.IDAS();
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```

## 🔗 See also

[ode](../ode_solvers/ode.md), [nelson.ode.options.CVODESNonstiff](../ode_solvers/nelson.ode.options.CVODESNonstiff.md), [nelson.ode.options.CVODESStiff](../ode_solvers/nelson.ode.options.CVODESStiff.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
