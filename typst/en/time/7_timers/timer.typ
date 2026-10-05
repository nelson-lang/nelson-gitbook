#import "../nelson_help.typ": *

= timer <time:7_timers.timer>

Create a timer object that runs commands after a delay or at repeated intervals.

== Syntax

- #raw("t = timer()");
- #raw("t = timer('PropertyName', PropertyValue, ...)");

== Input argument

/ PropertyName: Timer property name.
/ PropertyValue: Value assigned to the timer property.

== Output argument

/ t: Timer object.

== Description

#strong[timer]; creates a timer object. A timer object can execute a callback once, after a delay, at a future date, or repeatedly until it completes the requested number of tasks or is stopped.

 The callback to execute is stored in the #strong[TimerFcn]; property. The callback can be a function handle, a cell array whose first element is a function handle, a character vector, or a string scalar. Function handle callbacks receive the timer object and an event structure.

 Timer objects remain registered after the variable that held them goes out of scope. Use #strong[delete]; when a timer is no longer needed.

 Important timer properties are listed below.

 

#table(
  columns: 2,
  [Property], [Description], 
  [BusyMode], [Action used when fixed-rate timer callbacks cannot run immediately: #strong[drop];, #strong[queue];, or #strong[error];.], 
  [ExecutionMode], [Scheduling mode: #strong[singleShot];, #strong[fixedRate];, #strong[fixedDelay];, or #strong[fixedSpacing];.], 
  [Period], [Time in seconds between repeated timer executions.], 
  [StartDelay], [Delay in seconds before the first timer execution.], 
  [TasksToExecute], [Number of times to execute #strong[TimerFcn];. The default value is #strong[Inf];.], 
  [TasksExecuted], [Read-only count of completed timer callback executions.], 
  [Running], [Read-only value, #strong[on]; while the timer is active and #strong[off]; otherwise.], 
  [ObjectVisibility], [Visibility used by #strong[timerfind];. Hidden timers are still returned by #strong[timerfindall];.], 
)
 Use #strong[start]; to start a timer immediately, #strong[startat]; to start it at a specific date and time, #strong[stop]; to stop it, #strong[wait]; to block until it stops, and #strong[delete]; to remove it when it is no longer needed.


== Examples

Create a single-shot timer that runs after a short delay.

``````matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('timer fired'));
start(t);
wait(t);
delete(t);
``````

Create a timer that runs three times and reports the execution count.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp(get(src, 'TasksExecuted')));
start(t);
wait(t);
get(t, 'TasksExecuted')
delete(t);
``````


== See also

#nlink(<time:7_timers.start>)[start];, #nlink(<time:7_timers.startat>)[startat];, #nlink(<time:7_timers.stop>)[stop];, #nlink(<time:7_timers.wait>)[wait];, #nlink(<time:7_timers.timerfind>)[timerfind];, #nlink(<time:7_timers.timerfindall>)[timerfindall];, #nlink(<time:7_timers.timer_callback_functions>)[Timer Callback Functions];, #nlink(<time:7_timers.timer_queuing_conflicts>)[Timer Queuing Conflicts];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
