#import "../nelson_help.typ": *

= wait <time:7_timers.wait>

Wait for timer objects to stop.

== Syntax

- #raw("wait(t)");

== Input argument

/ t: Timer object or timer object array.

== Description

#strong[wait]; blocks until each timer in #strong[t]; stops. While it is waiting, Nelson continues processing timer callbacks so scheduled callbacks can complete.

 Use #strong[wait]; in scripts and tests when later commands depend on timer callbacks having completed.


== Example

Wait until a repeated timer finishes all requested tasks.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
get(t, 'Running')
get(t, 'TasksExecuted')
delete(t);
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.start>)[start];, #nlink(<time:7_timers.stop>)[stop];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
