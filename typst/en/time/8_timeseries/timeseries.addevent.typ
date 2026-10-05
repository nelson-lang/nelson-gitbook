#import "../nelson_help.typ": *

= timeseries.addevent <time:8_timeseries.timeseries.addevent>

Add an event to a timeseries object.

== Syntax

- #raw("tsOut = addevent(ts, eventObj)");

== Input argument

/ ts: Input timeseries object.
/ eventObj: Event created with tsdata.event.

== Output argument

/ tsOut: Output timeseries object with the event added.

== Description

#strong[addevent]; Adds a named event to the Events list of a timeseries object. Event times use the same time axis as the series.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
ev = tsdata.event('middle', 11);
ts = addevent(ts, ev);
ts.Events(1).Name

``````


== See also

#nlink(<time:8_timeseries.timeseries>)[timeseries];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
