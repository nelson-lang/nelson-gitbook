#import "../nelson_help.typ": *

= stop <time:7_timers.stop>

Stop a running timer object.

== Syntax

- #raw("stop(t)");

== Input argument

/ t: Timer object or timer object array.

== Description

#strong[stop]; stops running timers. If a timer has a #strong[StopFcn];, Nelson executes it when the timer transitions from running to stopped.

 Calling #strong[stop]; on a timer that is already stopped leaves the timer stopped.


== Example

Stop a repeated timer before it reaches its task limit.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.2, ...
  'TasksToExecute', Inf, ...
  'TimerFcn', @(src, event) disp('tick'), ...
  'StopFcn', @(src, event) disp('stopped'));
start(t);
sleep(0.35);
stop(t);
delete(t);
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.start>)[start];, #nlink(<time:7_timers.wait>)[wait];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
