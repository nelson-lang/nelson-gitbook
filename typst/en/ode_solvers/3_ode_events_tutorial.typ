#import "nelson_help.typ": *

= ode events tutorial <ode_solvers:3_ode_events_tutorial>

Locate events during ODE integration.

== Description

Use the #strong[Events]; option to stop or record integration points where an event function crosses zero. Event functions return value, terminal, and direction arrays.

 

#table(
  columns: 2,
  [Event output], [Meaning], 
  [#strong[te]; or #strong[xe];], [Time or independent variable value where an event was located.], 
  [#strong[ye];], [Solution at the event point.], 
  [#strong[ie];], [Index of the event function that crossed zero.], 
  [#strong[isterminal];], [Nonzero values stop integration at the event.], 
)
 Use terminal events to stop at thresholds and nonterminal events to collect diagnostic times without stopping the integration.


== Examples

Stop when the state reaches one half.

``````matlab
function [value,isterminal,direction] = localHalfEvent(t, y)
  value = y - 0.5;
  isterminal = 1;
  direction = 1;
end
options = odeset('Events', @localHalfEvent);
[t, y, te, ye, ie] = ode45(@(t,y) 1, [0 1], 0, options)
``````

Use an event object in the object workflow.

``````matlab
event = odeEvent('EventFcn', @(t,y) y - 0.5, 'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', event);
result = solve(problem, 0, 1)
``````


== See also

#nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:odeEvent>)[odeEvent];, #nlink(<ode_solvers:ode45>)[ode45];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
