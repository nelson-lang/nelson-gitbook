# ode

Object interface for ODE problems.

## 📝 Syntax

- problem = ode(name, value)
- result = solve(problem, tfinal)
- result = solve(problem, t0, tfinal)
- [f, data] = solutionFcn(problem, tfinal)

## 📄 Description


<b>ode</b> stores a differential equation problem and the settings used by <b>solve</b> and <b>solutionFcn</b>. 

| Call | Purpose | 
| --- | --- | 
| **solve(problem, tfinal)** | Integrates from **InitialTime** to **tfinal**. | 
| **solve(problem, t0, tfinal)** | Integrates from **t0**; this call-specific start time overrides **InitialTime**. | 
| **solutionFcn(problem, tfinal)** | Returns an interpolation function and the corresponding result object. | 

 

Main object properties: 

| Property | Accepted values | Effect | 
| --- | --- | --- | 
| **EquationType** | **'standard'**, **'fullyimplicit'** | **'standard'** uses **ODEFcn(t,y)**. **'fullyimplicit'** uses residuals **ODEFcn(t,y,yp)**. | 
| **Solver** | **'auto'**, **'autoswitch'**, **'nonstiff'**, **'stiff'**, solver names | Selects the integration method. **'auto'** chooses from the problem type. **'autoswitch'** can restart with a stiff method when stiffness is detected. | 
| **SolverOptions** | Options object matching the selected solver | Stores tolerances, output function, step-size bounds, and solver-specific settings. | 
| **Parameters** | Numeric vector or cell array | Passed after the standard arguments to the ODE, event, output, and event-response callbacks. A cell array expands to one argument per cell. | 
| **SeparateComplexParts** | **'off'**, **'on'** | With **'on'**, complex states are integrated through separated real and imaginary parts, while returned results use the original complex shape. | 

 

Solver families: 

| Family | Solver values | Notes | 
| --- | --- | --- | 
| Nonstiff | **'ode23'**, **'ode45'**, **'ode78'**, **'ode89'**, **'ode113'** | Use for smooth explicit problems. | 
| Stiff or mass matrix | **'ode15s'**, **'ode23s'**, **'ode23t'**, **'ode23tb'** | Use when a problem has fast decaying modes, a mass matrix, or a useful Jacobian. | 
| Fully implicit | **'ode15i'**, **'idas'** | **'idas'** is available only when Nelson is built with the optional SUNDIALS backend. | 
| Optional backend | **'cvodesnonstiff'**, **'cvodesstiff'**, **'idas'** | **NELSON\_SUNDIALS\_RUNTIME** can be **OFF** to force the in-tree fallback or **ON** to allow the backend when compiled. | 



## 💡 Examples

Use InitialTime with a final time.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialTime', 2, 'InitialValue', 1);
result = solve(problem, 3)
```
Build an interpolation function.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
f = solutionFcn(problem, 1);
yhalf = f(0.5)
```
Solve a fully implicit residual problem.

```matlab
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1);
result = solve(problem, 1)
```
Pass extra parameters to a problem function.

```matlab
problem = ode('ODEFcn', @(t,y,a) a .* y, ...
  'InitialValue', 1, ...
  'Parameters', 2);
result = solve(problem, 0, 1)
```
Solve a problem by separating complex parts internally.

```matlab
problem = ode('ODEFcn', @(t,y) y .* t + 2 * 1i, ...
  'InitialValue', 1 + 1i, ...
  'SeparateComplexParts', 'on');
result = solve(problem, 0, 2)
```


## 🔗 See also

[nelson.ode.options.CVODESNonstiff](../ode_solvers/nelson.ode.options.CVODESNonstiff.md), [nelson.ode.options.CVODESStiff](../ode_solvers/nelson.ode.options.CVODESStiff.md), [nelson.ode.options.IDAS](../ode_solvers/nelson.ode.options.IDAS.md), [odeJacobian](../ode_solvers/odeJacobian.md), [odeMassMatrix](../ode_solvers/odeMassMatrix.md), [odeEvent](../ode_solvers/odeEvent.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
