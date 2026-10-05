#import "nelson_help.typ": *

= ode complex workflow tutorial <ode_solvers:8_ode_complex_workflow_tutorial>

Solve object ODE problems with complex states.

== Description

Use #strong[SeparateComplexParts]; with the object workflow when an equation is written with complex states but the integration should advance separated real and imaginary parts internally.

 

#table(
  columns: 3,
  [Mode], [Setting], [Behavior], 
  [Native complex], [#strong[SeparateComplexParts]; \= #strong['off'];], [Use complex values directly when the selected solver supports them.], 
  [Separated real system], [#strong[SeparateComplexParts]; \= #strong['on'];], [Integrate real and imaginary parts as a real system.], 
  [Returned shape], [Original initial state shape.], [Results are reshaped back to the user's state layout.], 
)
 User functions receive complex values. The returned result object also stores complex #strong[Solution]; and #strong[EventSolution]; arrays.

 The same workflow supports interpolation with #strong[deval];, event objects, output functions, mass matrices, Jacobians, and fully implicit equations.


== Examples

Solve a scalar complex problem.

``````matlab
problem = ode('ODEFcn', @(t,y) y .* t + 2 * 1i, ...
  'InitialValue', 1 + 1i, ...
  'SeparateComplexParts', 'on');
result = solve(problem, 0, 2);
value = result.Solution(:, length(result.Time))
``````

Interpolate a complex result.

``````matlab
problem = ode('ODEFcn', @(t,y) 1i * y, ...
  'InitialValue', 1, ...
  'SeparateComplexParts', 'on');
result = solve(problem, 0, 1);
yhalf = deval(result, 0.5)
``````

Stop on a complex-state event.

``````matlab
event = odeEvent('EventFcn', @(t,y) imag(y) - 0.5, ...
  'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1 + 1i, ...
  'InitialValue', 0, ...
  'SeparateComplexParts', 'on', ...
  'EventDefinition', event);
result = solve(problem, 0, 1);
result.EventSolution
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:odeEvent>)[odeEvent];, #nlink(<ode_solvers:deval>)[deval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
