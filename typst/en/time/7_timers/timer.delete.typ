#import "../nelson_help.typ": *

= timer.delete <time:7_timers.timer.delete>

Stop and invalidate timer objects.

== Syntax

- #raw("delete(t)");

== Input argument

/ t: Timer object or timer object array.

== Description

#strong[delete]; stops timer objects and invalidates their handles. After deletion, #strong[isvalid]; returns false for those handles.

 Delete timers when they are no longer needed. A deleted timer cannot be restarted.


== Examples

Delete a timer after it has finished running.

``````matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('done'));
start(t);
wait(t);
delete(t);
isvalid(t)
``````

Delete a running timer. The timer is stopped before the handle is invalidated.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.2, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
delete(t);
isvalid(t)
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer.isvalid>)[isvalid];, #nlink(<time:7_timers.stop>)[stop];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
