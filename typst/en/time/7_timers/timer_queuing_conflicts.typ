#import "../nelson_help.typ": *

= Timer Queuing Conflicts <time:7_timers.timer_queuing_conflicts>

Control what happens when timer callbacks are still queued when a fixed-rate timer fires again.

== Description

Timer callback execution is serialized by the evaluator. A fixed-rate timer can fire again while a previous #strong[TimerFcn]; callback is still queued or running. The #strong[BusyMode]; property controls how Nelson resolves this conflict.

 

#table(
  columns: 2,
  [BusyMode], [Behavior], 
  [drop], [Keep at most one pending callback for the timer. Extra firings are discarded.], 
  [queue], [Queue each firing. The timer can continue executing callbacks after the scheduled firing times have passed.], 
  [error], [Stop the timer and execute #strong[ErrorFcn];, then #strong[StopFcn]; if those callbacks are defined.], 
)
 #strong[BusyMode]; applies to #strong[fixedRate]; execution. For #strong[fixedDelay]; and #strong[fixedSpacing];, the next firing is scheduled after the callback completes, so callbacks do not pile up in the same way.


== Examples

Use queue mode when every scheduled firing should be kept.

``````matlab
t = timer('ExecutionMode', 'fixedRate', ...
  'BusyMode', 'queue', ...
  'Period', 0.02, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) sleep(0.03));
start(t);
wait(t);
get(t, 'TasksExecuted')
delete(t);
``````

Use error mode to stop when the callback queue cannot keep up.

``````matlab
t = timer('ExecutionMode', 'fixedRate', ...
  'BusyMode', 'error', ...
  'Period', 0.02, ...
  'TasksToExecute', 5, ...
  'TimerFcn', @(src, event) sleep(0.03), ...
  'ErrorFcn', @(src, event) disp('timer queue conflict'));
start(t);
wait(t);
get(t, 'Running')
delete(t);
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer_callback_functions>)[Timer Callback Functions];, #nlink(<time:7_timers.timer.set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
