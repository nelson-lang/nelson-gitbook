#import "../nelson_help.typ": *

= timeseries.gettsafterevent <time:8_timeseries.timeseries.gettsafterevent>

Return samples after an event.

== Syntax

- #raw("tsOut = gettsafterevent(ts, eventName)");

== Input argument

/ ts: Input timeseries object.
/ eventName: Name of an event in ts.Events.

== Output argument

/ tsOut: Output timeseries object containing the selected samples.

== Description

#strong[gettsafterevent]; Finds the named event and keeps samples whose time is greater than the event time.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsafterevent(ts, 'middle').Data

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
