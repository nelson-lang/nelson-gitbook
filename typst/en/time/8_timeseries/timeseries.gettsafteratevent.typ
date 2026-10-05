#import "../nelson_help.typ": *

= timeseries.gettsafteratevent <time:8_timeseries.timeseries.gettsafteratevent>

Return samples at or after an event.

== Syntax

- #raw("tsOut = gettsafteratevent(ts, eventName)");

== Input argument

/ ts: Input timeseries object.
/ eventName: Name of an event in ts.Events.

== Output argument

/ tsOut: Output timeseries object containing the selected samples.

== Description

#strong[gettsafteratevent]; Finds the named event and keeps samples whose time is greater than or equal to the event time.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsafteratevent(ts, 'middle').Data

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
