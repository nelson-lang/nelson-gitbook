# nelson.ode.options.ODE15i

Options object for the ode15i solver.

## 📝 Syntax

- options = nelson.ode.options.ODE15i()
- options = nelson.ode.options.ODE15i(name, value)

## 📄 Description

<b>nelson.ode.options.ODE15i</b> creates a compatible option class for the <b>'ode15i'</b> solver value used by the <b>ode</b> object workflow.

| Option group        | Names                                     | Purpose                                                                          |
| ------------------- | ----------------------------------------- | -------------------------------------------------------------------------------- |
| Steps               | **InitialStep**, **MaxStep**, **MinStep** | Bound the adaptive step size selection.                                          |
| Error control       | **NormControl**                           | Switch between componentwise and norm based error control.                       |
| Method              | **MaxOrder**                              | Bound the order of the backward differentiation formulas.                        |
| Consistent initials | **ComputeConsistentInitialConditions**    | Request consistent **y0** and **yp0** before integration.                        |
| Evaluation          | **Vectorization**                         | Declare vectorization of the residual function with respect to **y** and **yp**. |
| Output              | **OutputFcn**, **OutputSelection**        | Select output callbacks and returned components.                                 |

The <b>'ode15i'</b> solver value uses a variable order implicit method for fully implicit residual problems <b>F(t,y,yp)=0</b>, including stiff differential algebraic equations.

Supported properties are <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>MaxOrder</b>, and <b>ComputeConsistentInitialConditions</b>. <b>InitialStep</b>, <b>MaxStep</b>, and <b>MinStep</b> are positive scalars bounding the adaptive step size; their default value is empty, which lets the solver choose them automatically. <b>NormControl</b> accepts <b>'on'</b> or <b>'off'</b> (default <b>'off'</b>) and enables error control based on the norm of the solution instead of componentwise control. <b>Vectorization</b> is a two-element cell array such as {<b>'off'</b>, <b>'off'</b>} (the default) declaring vectorization of the residual function with respect to <b>y</b> and <b>yp</b>; a single <b>'on'</b> or <b>'off'</b> value applies to both arguments. <b>MaxOrder</b> is an integer between 1 and 5 (default 5) bounding the order of the formulas. <b>ComputeConsistentInitialConditions</b> is a logical scalar (default <b>true</b>); when enabled, the solver adjusts the initial value and initial slope so that the residual is consistent at the initial time. <b>OutputFcn</b> is a function handle called on each output point (default empty). <b>OutputSelection</b> is a vector of indices selecting which solution components are passed to the output function (default empty, all components). The default <b>Refine</b> value for this solver is 1.

## 💡 Example

Create a fully implicit residual problem solved with ode15i options.

```matlab
options = nelson.ode.options.ODE15i('MaxOrder', 4);
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```

## 🔗 See also

[ode](../ode_solvers/ode.md), [ode15i](../ode_solvers/ode15i.md), [nelson.ode.options.ODE15s](../ode_solvers/nelson.ode.options.ODE15s.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
