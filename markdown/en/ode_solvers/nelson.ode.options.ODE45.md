# nelson.ode.options.ODE45

Options object for the ode45 solver.

## 📝 Syntax

- options = nelson.ode.options.ODE45()
- options = nelson.ode.options.ODE45(name, value)

## 📄 Description


<b>nelson.ode.options.ODE45</b> creates a compatible option class for the <b>'ode45'</b> solver value used by the <b>ode</b> object workflow. 

| Option group | Names | Purpose | 
| --- | --- | --- | 
| Steps | **InitialStep**, **MaxStep**, **MinStep** | Bound the adaptive step size selection. | 
| Error control | **NormControl** | Switch between componentwise and norm based error control. | 
| Output | **OutputFcn**, **OutputSelection** | Select output callbacks and returned components. | 

 

The <b>'ode45'</b> solver value uses an explicit Runge-Kutta (4,5) pair and is the recommended first choice for nonstiff problems. It is the default solver value of the <b>ode</b> object workflow. 

Supported properties are <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>NormControl</b>, <b>OutputFcn</b>, and <b>OutputSelection</b>. <b>InitialStep</b>, <b>MaxStep</b>, and <b>MinStep</b> are positive scalars bounding the adaptive step size; their default value is empty, which lets the solver choose them automatically. <b>NormControl</b> accepts <b>'on'</b> or <b>'off'</b> (default <b>'off'</b>) and enables error control based on the norm of the solution instead of componentwise control. <b>OutputFcn</b> is a function handle called on each output point (default empty). <b>OutputSelection</b> is a vector of indices selecting which solution components are passed to the output function (default empty, all components). The default <b>Refine</b> value for this solver is 4.

## 💡 Example

Create a nonstiff problem solved with ode45 options.

```matlab
options = nelson.ode.options.ODE45('MaxStep', 0.1);
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```


## 🔗 See also

[ode](../ode_solvers/ode.md), [ode45](../ode_solvers/ode45.md), [nelson.ode.options.ODE23](../ode_solvers/nelson.ode.options.ODE23.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
