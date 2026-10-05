#import "../nelson_help.typ": *

= timerfind <time:7_timers.timerfind>

Find visible timer objects that match property criteria.

== Syntax

- #raw("out = timerfind()");
- #raw("out = timerfind('PropertyName', PropertyValue, ...)");
- #raw("out = timerfind(t, 'PropertyName', PropertyValue, ...)");
- #raw("out = timerfind(values)");

== Input argument

/ t: Timer object array used as the search source.
/ PropertyName, PropertyValue: Property criteria. Returned timers must match all requested values.
/ values: Scalar structure whose fields contain property criteria.

== Output argument

/ out: Array of matching timer objects whose #strong[ObjectVisibility]; property is #strong[on];.

== Description

#strong[timerfind]; returns visible timer objects that match all specified property criteria. Without criteria, it returns all visible timers.

 Use #strong[timerfindall]; to include timers whose #strong[ObjectVisibility]; property is #strong[off];.


== Examples

Find a visible timer by tag.

``````matlab
t = timer('Name', 'visibleTimer', ...
  'Tag', 'demo-visible', ...
  'TimerFcn', @(src, event) disp('visible'));
found = timerfind('Tag', 'demo-visible')
delete(t);
``````

Search within a supplied timer array.

``````matlab
t1 = timer('Tag', 'groupA', 'TimerFcn', @(src, event) disp('a'));
t2 = timer('Tag', 'groupB', 'TimerFcn', @(src, event) disp('b'));
found = timerfind([t1 t2], 'Tag', 'groupB')
delete([t1 t2]);
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timerfindall>)[timerfindall];, #nlink(<time:7_timers.timer.get>)[get];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
