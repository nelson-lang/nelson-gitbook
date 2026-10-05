#import "../nelson_help.typ": *

= timer.isvalid <time:7_timers.timer.isvalid>

Determine which timer handles are valid.

== Syntax

- #raw("tf = isvalid(t)");

== Input argument

/ t: Timer object or timer object array.

== Output argument

/ tf: Logical array with the same size as #strong[t];. Values are true for valid timer handles and false for deleted timer handles.

== Description

#strong[isvalid]; checks whether timer handles still refer to live timer objects. Calling #strong[delete]; on a timer invalidates the handle.


== Example

Check a timer handle before and after deletion.

``````matlab
t = timer('TimerFcn', @(src, event) disp('timer'));
beforeDelete = isvalid(t)
delete(t);
afterDelete = isvalid(t)
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer.delete>)[delete];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
