#import "nelson_help.typ": *

= ode object workflow tutorial <ode_solvers:7_ode_object_workflow_tutorial>

Define and solve ODE problems with class objects.

== Description

The #strong[ode]; class stores a problem definition, including the equation, initial state, parameters, events, mass matrix, Jacobian, and solver options.

 

#table(
  columns: 2,
  [Property], [Purpose], 
  [#strong[ODEFcn];, #strong[InitialValue];], [Define the differential equation and initial state.], 
  [#strong[Solver];, #strong[SolverOptions];], [Select the integration method and its options.], 
  [#strong[EventDefinition];, #strong[MassMatrix];, #strong[Jacobian];], [Add zero crossing, mass matrix, or Jacobian information.], 
  [#strong[Sensitivity];, #strong[DelayDefinition];], [Add sensitivities or delayed states when supported by the selected workflow.], 
)
 Call #strong[solve]; to obtain a result object, or #strong[solutionFcn]; to obtain an interpolation function together with the result object.


== Examples

Create a reusable problem object.

``````matlab
problem = ode('ODEFcn', @(t,y,rate) -rate * y, ...
  'InitialValue', 1, 'Parameters', {2});
result = solve(problem, 0, 1)
``````

Use solutionFcn for interpolation.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
[f, result] = solutionFcn(problem, 0, 1);
f(0.5)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:odeset>)[odeset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
