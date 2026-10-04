# nelson.ode.options.ODE15s

Options object for the ode15s solver.

## 📝 Syntax

- options = nelson.ode.options.ODE15s()
- options = nelson.ode.options.ODE15s(name, value)

## 📄 Description

<b>nelson.ode.options.ODE15s</b> creates a compatible option class for the <b>'ode15s'</b> solver value used by the <b>ode</b> object workflow.

| Option group  | Names                                     | Purpose                                                              |
| ------------- | ----------------------------------------- | -------------------------------------------------------------------- |
| Steps         | **InitialStep**, **MaxStep**, **MinStep** | Bound the adaptive step size selection.                              |
| Error control | **NormControl**                           | Switch between componentwise and norm based error control.           |
| Method        | **BDF**, **MaxOrder**                     | Select backward differentiation formulas and bound the method order. |
| Evaluation    | **Vectorization**                         | Declare that the ODE function accepts matrices of states.            |
| Output        | **OutputFcn**, **OutputSelection**        | Select output callbacks and returned components.                     |

The <b>'ode15s'</b> solver value uses an implicit multistep method for stiff problems and differential algebraic equations with a mass matrix.

Supported properties are <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>BDF</b>, and <b>MaxOrder</b>. <b>InitialStep</b>, <b>MaxStep</b>, and <b>MinStep</b> are positive scalars bounding the adaptive step size; their default value is empty, which lets the solver choose them automatically. <b>NormControl</b> accepts <b>'on'</b> or <b>'off'</b> (default <b>'off'</b>) and enables error control based on the norm of the solution instead of componentwise control. <b>Vectorization</b> accepts <b>'on'</b> or <b>'off'</b> (default <b>'off'</b>) and declares that the ODE function can evaluate several columns of states at once. <b>BDF</b> accepts <b>'on'</b> or <b>'off'</b> (default <b>'off'</b>) and selects backward differentiation formulas instead of the default numerical differentiation formulas. <b>MaxOrder</b> is an integer between 1 and 5 (default 5) bounding the order of the formulas. <b>OutputFcn</b> is a function handle called on each output point (default empty). <b>OutputSelection</b> is a vector of indices selecting which solution components are passed to the output function (default empty, all components). The default <b>Refine</b> value for this solver is 1.

## 💡 Example

Create a stiff problem solved with ode15s options.

```matlab
options = nelson.ode.options.ODE15s('BDF', 'on', 'MaxOrder', 4);
problem = ode('ODEFcn', @(t,y) -1000 * (y - cos(t)), 'InitialValue', 0, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```

## 🔗 See also

[ode](../ode_solvers/ode.md), [ode15s](../ode_solvers/ode15s.md), [nelson.ode.options.ODE23s](../ode_solvers/nelson.ode.options.ODE23s.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
