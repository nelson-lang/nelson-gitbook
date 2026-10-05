#import "nelson_help.typ": *

= odeSensitivity <ode_solvers:odeSensitivity>

Sensitivity definition object for ODE workflows.

== Syntax

- #raw("S = odeSensitivity()");
- #raw("S = odeSensitivity(name, value)");

== Description

#strong[odeSensitivity]; stores sensitivity settings for the #strong[ode]; object workflow. Nelson solves direct forward sensitivities for explicit and fully implicit problems with a numeric parameter vector.

 

#table(
  columns: 3,
  [Object], [Purpose], [Used by], 
  [#strong[odeSensitivity];], [Stores a reusable definition for the #strong[ode]; object workflow.], [The matching #strong[ode]; property and #strong[solve];.], 
  [Validation], [Checks supported names and shapes at construction time.], [Tests and errors stay explicit before integration.], 
)
 When the optional SUNDIALS backend is available, #strong[cvodesnonstiff];, #strong[cvodesstiff];, and #strong[idas]; use native direct forward sensitivity support for problems without event callbacks. #strong[cvodesnonstiff];, #strong[cvodesstiff];, and #strong[idas]; also support adjoint gradients for scalar final objectives and optional scalar integral objectives.

 The direct #strong[Sensitivity]; result is an array with dimensions state-by-parameter-by-time. Event locations without callbacks also populate #strong[EventSensitivity];. The adjoint result is #strong[AdjointGradient];, a row vector ordered like #strong[ParameterIndices];. Output functions receive the physical state only. Mass matrices, nonnegative state constraints, and delayed equations are supported for explicit direct sensitivities. Event callbacks, separated complex parts, delayed output functions, and delayed adjoints are not supported yet.

 #strong[Method]; defaults to #strong[direct];. The value #strong[forward]; is accepted as an alias for #strong[direct];. With #strong[Method]; set to #strong[adjoint];, provide #strong[ObjectiveFcn];, #strong[QuadratureFcn];, or both. These functions are called as #strong[f(t,y,p)]; and must return a real scalar. #strong[ObjectiveTime]; is reserved for final-time objectives and must match the solve final time when provided. #strong[AdjointRelativeTolerance]; and #strong[AdjointAbsoluteTolerance]; override the backward problem tolerances.


== Examples

``````matlab
F = ode('ODEFcn', @(t,y,p) p(1) * y, ...
  'InitialValue', 1, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity('ParameterIndices', 1));
R = solve(F, 0, 0.2);
Sfinal = R.Sensitivity(1, 1, length(R.Time))
``````

``````matlab
F = ode('ODEFcn', @(t,y,p) p(1), ...
  'InitialValue', 0, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity(), ...
  'EventDefinition', odeEvent('EventFcn', @(t,y) y - 0.5, 'Response', 'stop'));
R = solve(F, 0, 1);
R.EventSensitivity(1, 1, 1)
``````

``````matlab
F = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp,p) yp + p(1) * y, ...
  'InitialValue', 1, ...
  'InitialSlope', -2, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity());
R = solve(F, 0, 0.2);
Sfinal = R.Sensitivity(1, 1, length(R.Time))
``````

``````matlab
F = ode('ODEFcn', @(t,y,p) p(1) * y, ...
  'InitialValue', 1, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity('Method', 'adjoint', ...
    'ObjectiveFcn', @(t,y,p) y(1)), ...
  'Solver', 'cvodesnonstiff');
R = solve(F, 0, 0.5);
R.AdjointGradient
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:odeJacobian>)[odeJacobian];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
