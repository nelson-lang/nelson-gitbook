#import "../nelson_help.typ": *

= start <time:7_timers.start>

Start a timer object.

== Syntax

- #raw("start(t)");

== Input argument

/ t: Timer object or timer object array.

== Description

#strong[start]; starts the timer using its #strong[StartDelay];, #strong[ExecutionMode];, #strong[Period];, and #strong[TasksToExecute]; properties. The timer must have a nonempty #strong[TimerFcn];.

 #strong[start]; returns immediately after the timer is scheduled. Use #strong[wait]; when the current command sequence must block until the timer finishes.


== Examples

Start a single-shot timer.

``````matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('started and fired'));
start(t);
wait(t);
delete(t);
``````

Start a repeated timer.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
delete(t);
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.startat>)[startat];, #nlink(<time:7_timers.stop>)[stop];, #nlink(<time:7_timers.wait>)[wait];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
