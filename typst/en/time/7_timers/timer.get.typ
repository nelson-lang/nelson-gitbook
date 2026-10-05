#import "../nelson_help.typ": *

= timer.get <time:7_timers.timer.get>

Get timer property values.

== Syntax

- #raw("value = get(t, 'PropertyName')");
- #raw("values = get(t)");

== Input argument

/ t: Timer object. Use a scalar timer when requesting all properties.
/ PropertyName: Name of the property to query.

== Output argument

/ value: Requested property value.
/ values: Scalar structure containing the timer property values.

== Description

#strong[get]; returns the value of a named timer property. Calling #strong[get]; with only a scalar timer returns a structure containing all timer properties, including read-only properties such as #strong[Running];, #strong[TasksExecuted];, #strong[AveragePeriod];, and #strong[InstantPeriod];.


== Examples

Query one property and then all properties.

``````matlab
t = timer('Name', 'getExample', ...
  'StartDelay', 0.2, ...
  'TimerFcn', @(src, event) disp('done'));
delay = get(t, 'StartDelay')
props = get(t)
delete(t);
``````

Read the number of completed tasks after a repeated timer finishes.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 2, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
executed = get(t, 'TasksExecuted')
delete(t);
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer.set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
