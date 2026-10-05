# nelson.ode.options.ODE23t

Options object for the ode23t solver.

## 📝 Syntax

- options = nelson.ode.options.ODE23t()
- options = nelson.ode.options.ODE23t(name, value)

## 📄 Description


<b>nelson.ode.options.ODE23t</b> creates a compatible option class for the <b>'ode23t'</b> solver value used by the <b>ode</b> object workflow. 

| Option group | Names | Purpose | 
| --- | --- | --- | 
| Steps | **InitialStep**, **MaxStep**, **MinStep** | Bound the adaptive step size selection. | 
| Error control | **NormControl** | Switch between componentwise and norm based error control. | 
| Evaluation | **Vectorization** | Declare that the ODE function accepts matrices of states. | 
| Output | **OutputFcn**, **OutputSelection** | Select output callbacks and returned components. | 

 

The <b>'ode23t'</b> solver value uses an implementation of the trapezoidal rule, suited to moderately stiff problems when a solution without numerical damping is wanted. 

Supported properties are <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, and <b>Vectorization</b>. <b>InitialStep</b>, <b>MaxStep</b>, and <b>MinStep</b> are positive scalars bounding the adaptive step size; their default value is empty, which lets the solver choose them automatically. <b>NormControl</b> accepts <b>'on'</b> or <b>'off'</b> (default <b>'off'</b>) and enables error control based on the norm of the solution instead of componentwise control. <b>Vectorization</b> accepts <b>'on'</b> or <b>'off'</b> (default <b>'off'</b>) and declares that the ODE function can evaluate several columns of states at once. <b>OutputFcn</b> is a function handle called on each output point (default empty). <b>OutputSelection</b> is a vector of indices selecting which solution components are passed to the output function (default empty, all components). The default <b>Refine</b> value for this solver is 1.

## 💡 Example

Create a moderately stiff problem solved with ode23t options.

```matlab
options = nelson.ode.options.ODE23t('MaxStep', 0.1);
problem = ode('ODEFcn', @(t,y) -20 * y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```


## 🔗 See also

[ode](../ode_solvers/ode.md), [ode23t](../ode_solvers/ode23t.md), [nelson.ode.options.ODE23tb](../ode_solvers/nelson.ode.options.ODE23tb.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
