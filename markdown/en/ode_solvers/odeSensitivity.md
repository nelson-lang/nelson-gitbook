# odeSensitivity

Sensitivity definition object for ODE workflows.

## 📝 Syntax

- S = odeSensitivity()
- S = odeSensitivity(name, value)

## 📄 Description


<b>odeSensitivity</b> stores sensitivity settings for the <b>ode</b> object workflow. Nelson solves direct forward sensitivities for explicit and fully implicit problems with a numeric parameter vector. 

| Object | Purpose | Used by | 
| --- | --- | --- | 
| **odeSensitivity** | Stores a reusable definition for the **ode** object workflow. | The matching **ode** property and **solve**. | 
| Validation | Checks supported names and shapes at construction time. | Tests and errors stay explicit before integration. | 

 

When the optional SUNDIALS backend is available, <b>cvodesnonstiff</b>, <b>cvodesstiff</b>, and <b>idas</b> use native direct forward sensitivity support for problems without event callbacks. <b>cvodesnonstiff</b>, <b>cvodesstiff</b>, and <b>idas</b> also support adjoint gradients for scalar final objectives and optional scalar integral objectives. 

The direct <b>Sensitivity</b> result is an array with dimensions state-by-parameter-by-time. Event locations without callbacks also populate <b>EventSensitivity</b>. The adjoint result is <b>AdjointGradient</b>, a row vector ordered like <b>ParameterIndices</b>. Output functions receive the physical state only. Mass matrices, nonnegative state constraints, and delayed equations are supported for explicit direct sensitivities. Event callbacks, separated complex parts, delayed output functions, and delayed adjoints are not supported yet. 

<b>Method</b> defaults to <b>direct</b>. The value <b>forward</b> is accepted as an alias for <b>direct</b>. With <b>Method</b> set to <b>adjoint</b>, provide <b>ObjectiveFcn</b>, <b>QuadratureFcn</b>, or both. These functions are called as <b>f(t,y,p)</b> and must return a real scalar. <b>ObjectiveTime</b> is reserved for final-time objectives and must match the solve final time when provided. <b>AdjointRelativeTolerance</b> and <b>AdjointAbsoluteTolerance</b> override the backward problem tolerances.

## 💡 Examples


```matlab
F = ode('ODEFcn', @(t,y,p) p(1) * y, ...
  'InitialValue', 1, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity('ParameterIndices', 1));
R = solve(F, 0, 0.2);
Sfinal = R.Sensitivity(1, 1, length(R.Time))
```

```matlab
F = ode('ODEFcn', @(t,y,p) p(1), ...
  'InitialValue', 0, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity(), ...
  'EventDefinition', odeEvent('EventFcn', @(t,y) y - 0.5, 'Response', 'stop'));
R = solve(F, 0, 1);
R.EventSensitivity(1, 1, 1)
```

```matlab
F = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp,p) yp + p(1) * y, ...
  'InitialValue', 1, ...
  'InitialSlope', -2, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity());
R = solve(F, 0, 0.2);
Sfinal = R.Sensitivity(1, 1, length(R.Time))
```

```matlab
F = ode('ODEFcn', @(t,y,p) p(1) * y, ...
  'InitialValue', 1, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity('Method', 'adjoint', ...
    'ObjectiveFcn', @(t,y,p) y(1)), ...
  'Solver', 'cvodesnonstiff');
R = solve(F, 0, 0.5);
R.AdjointGradient
```


## 🔗 See also

[ode](../ode_solvers/ode.md), [odeJacobian](../ode_solvers/odeJacobian.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
