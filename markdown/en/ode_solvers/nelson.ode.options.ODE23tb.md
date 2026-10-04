# nelson.ode.options.ODE23tb

Options object for the ode23tb solver.

## 📝 Syntax

- options = nelson.ode.options.ODE23tb()
- options = nelson.ode.options.ODE23tb(name, value)

## 📄 Description

<b>nelson.ode.options.ODE23tb</b> creates a compatible option class for the <b>'ode23tb'</b> solver value used by the <b>ode</b> object workflow.

| Option group  | Names                                     | Purpose                                                    |
| ------------- | ----------------------------------------- | ---------------------------------------------------------- |
| Steps         | **InitialStep**, **MaxStep**, **MinStep** | Bound the adaptive step size selection.                    |
| Error control | **NormControl**                           | Switch between componentwise and norm based error control. |
| Evaluation    | **Vectorization**                         | Declare that the ODE function accepts matrices of states.  |
| Output        | **OutputFcn**, **OutputSelection**        | Select output callbacks and returned components.           |

The <b>'ode23tb'</b> solver value uses an implicit Runge-Kutta method combining a trapezoidal rule stage with a backward differentiation stage, effective for stiff problems at crude tolerances.

Supported properties are <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, and <b>Vectorization</b>. <b>InitialStep</b>, <b>MaxStep</b>, and <b>MinStep</b> are positive scalars bounding the adaptive step size; their default value is empty, which lets the solver choose them automatically. <b>NormControl</b> accepts <b>'on'</b> or <b>'off'</b> (default <b>'off'</b>) and enables error control based on the norm of the solution instead of componentwise control. <b>Vectorization</b> accepts <b>'on'</b> or <b>'off'</b> (default <b>'off'</b>) and declares that the ODE function can evaluate several columns of states at once. <b>OutputFcn</b> is a function handle called on each output point (default empty). <b>OutputSelection</b> is a vector of indices selecting which solution components are passed to the output function (default empty, all components). The default <b>Refine</b> value for this solver is 1.

## 💡 Example

Create a stiff problem solved with ode23tb options.

```matlab
options = nelson.ode.options.ODE23tb('Vectorization', 'on');
problem = ode('ODEFcn', @(t,y) -100 * y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```

## 🔗 See also

[ode](../ode_solvers/ode.md), [ode23tb](../ode_solvers/ode23tb.md), [nelson.ode.options.ODE23t](../ode_solvers/nelson.ode.options.ODE23t.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
