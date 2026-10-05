#import "../nelson_help.typ": *

= timeseries.gettsbeforeevent <time:8_timeseries.timeseries.gettsbeforeevent>

Return samples before an event.

== Syntax

- #raw("tsOut = gettsbeforeevent(ts, eventName)");

== Input argument

/ ts: Input timeseries object.
/ eventName: Name of an event in ts.Events.

== Output argument

/ tsOut: Output timeseries object containing the selected samples.

== Description

#strong[gettsbeforeevent]; Finds the named event and keeps samples whose time is less than the event time.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsbeforeevent(ts, 'middle').Data

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
