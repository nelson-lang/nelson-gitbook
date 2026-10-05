#import "../nelson_help.typ": *

= timer.set <time:7_timers.timer.set>

Set timer property values.

== Syntax

- #raw("set(t, 'PropertyName', PropertyValue, ...)");
- #raw("set(t, values)");
- #raw("t.PropertyName = PropertyValue");

== Input argument

/ t: Timer object or timer object array.
/ PropertyName: Name of a writable timer property.
/ PropertyValue: New value for the property.
/ values: Scalar structure whose fields are timer property names. Read-only fields are ignored.

== Description

#strong[set]; changes writable timer properties. Writable properties include #strong[BusyMode];, #strong[ErrorFcn];, #strong[ExecutionMode];, #strong[Name];, #strong[ObjectVisibility];, #strong[Period];, #strong[StartDelay];, #strong[StartFcn];, #strong[StopFcn];, #strong[Tag];, #strong[TasksToExecute];, #strong[TimerFcn];, and #strong[UserData];.

 Do not change scheduling properties such as #strong[BusyMode];, #strong[ExecutionMode];, #strong[Period];, or #strong[StartDelay]; while a timer is running.


== Examples

Configure a timer with property name and value pairs.

``````matlab
t = timer();
set(t, 'Name', 'setExample', ...
  'ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 2, ...
  'TimerFcn', @(src, event) disp(get(src, 'Name')));
start(t);
wait(t);
delete(t);
``````

Set multiple properties from a structure.

``````matlab
t = timer('TimerFcn', @(src, event) disp('done'));
values = struct();
values.Tag = 'batch';
values.StartDelay = 0.1;
set(t, values);
get(t, 'Tag')
delete(t);
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer.get>)[get];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
