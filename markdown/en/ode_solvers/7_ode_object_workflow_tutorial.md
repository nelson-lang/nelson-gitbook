# ode object workflow tutorial

Define and solve ODE problems with class objects.

## 📄 Description


The <b>ode</b> class stores a problem definition, including the equation, initial state, parameters, events, mass matrix, Jacobian, and solver options. 

| Property | Purpose | 
| --- | --- | 
| **ODEFcn**, **InitialValue** | Define the differential equation and initial state. | 
| **Solver**, **SolverOptions** | Select the integration method and its options. | 
| **EventDefinition**, **MassMatrix**, **Jacobian** | Add zero crossing, mass matrix, or Jacobian information. | 
| **Sensitivity**, **DelayDefinition** | Add sensitivities or delayed states when supported by the selected workflow. | 

 

Call <b>solve</b> to obtain a result object, or <b>solutionFcn</b> to obtain an interpolation function together with the result object.

## 💡 Examples

Create a reusable problem object.

```matlab
problem = ode('ODEFcn', @(t,y,rate) -rate * y, ...
  'InitialValue', 1, 'Parameters', {2});
result = solve(problem, 0, 1)
```
Use solutionFcn for interpolation.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
[f, result] = solutionFcn(problem, 0, 1);
f(0.5)
```


## 🔗 See also

[ode](../ode_solvers/ode.md), [odeset](../ode_solvers/odeset.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
