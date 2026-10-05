#import "nelson_help.typ": *

= odeEvent <ode_solvers:odeEvent>

Event description for ODE object workflows.

== Syntax

- #raw("E = odeEvent(eventFcn)");
- #raw("E = odeEvent(name, value)");

== Description

#strong[odeEvent]; stores an event function and event policy for the #strong[ode]; object workflow.

 

#table(
  columns: 3,
  [Object], [Purpose], [Used by], 
  [#strong[odeEvent];], [Stores a reusable definition for the #strong[ode]; object workflow.], [The matching #strong[ode]; property and #strong[solve];.], 
  [Validation], [Checks supported names and shapes at construction time.], [Tests and errors stay explicit before integration.], 
)
 #strong[EventFcn]; can return only event values. In that case #strong[Direction]; controls the crossing direction and #strong[Response]; controls whether the solver proceeds or stops. Legacy event functions that return value, terminal flags, and direction are also accepted. These three outputs must contain the same number of finite elements.

 #strong[Direction]; accepts #strong[both];, #strong[increasing];, or #strong[decreasing];. #strong[Response]; accepts #strong[proceed];, #strong[stop];, or #strong[callback];. When #strong[Response]; is #strong[callback];, #strong[CallbackFcn]; is called with event time, event solution, event index, and optional problem parameters. It can return a scalar stop flag and an updated event solution.


== Examples

Stop when the solution reaches one half.

``````matlab
E = odeEvent('EventFcn', @(t,y) y - 0.5, ...
  'Direction', 'increasing', ...
  'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', E);
result = solve(problem, 0, 1)
``````

Call a callback at the event point.

``````matlab
function [stop, y] = myEventCallback(t, y, index)
  stop = true;
end
E = odeEvent('EventFcn', @(t,y) y - 0.5, ...
  'Response', 'callback', ...
  'CallbackFcn', @myEventCallback);
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', E);
result = solve(problem, 0, 1)
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
