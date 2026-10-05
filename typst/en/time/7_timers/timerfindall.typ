#import "../nelson_help.typ": *

= timerfindall <time:7_timers.timerfindall>

Find all timer objects that match property criteria, including hidden timers.

== Syntax

- #raw("out = timerfindall()");
- #raw("out = timerfindall('PropertyName', PropertyValue, ...)");
- #raw("out = timerfindall(t, 'PropertyName', PropertyValue, ...)");
- #raw("out = timerfindall(values)");

== Input argument

/ t: Timer object array used as the search source.
/ PropertyName, PropertyValue: Property criteria. Returned timers must match all requested values.
/ values: Scalar structure whose fields contain property criteria.

== Output argument

/ out: Array of matching timer objects, including objects whose #strong[ObjectVisibility]; property is #strong[off];.

== Description

#strong[timerfindall]; returns timer objects that match all specified property criteria. Unlike #strong[timerfind];, it includes hidden timers.

 It can also return timer objects whose original variable has gone out of scope, until those timers are deleted.


== Examples

Find a hidden timer by tag.

``````matlab
t = timer('ObjectVisibility', 'off', ...
  'Tag', 'demo-hidden', ...
  'TimerFcn', @(src, event) disp('hidden'));
visibleOnly = timerfind('Tag', 'demo-hidden')
includingHidden = timerfindall('Tag', 'demo-hidden')
delete(t);
``````

Use a criteria structure.

``````matlab
t = timer('Name', 'criteriaTimer', ...
  'Tag', 'criteria', ...
  'TimerFcn', @(src, event) disp('criteria'));
criteria = struct('Name', 'criteriaTimer', 'Tag', 'criteria');
found = timerfindall(criteria)
delete(t);
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timerfind>)[timerfind];, #nlink(<time:7_timers.timer.get>)[get];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
