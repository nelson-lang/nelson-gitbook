#import "../nelson_help.typ": *

= timeseries.gettsbetweenevents <time:8_timeseries.timeseries.gettsbetweenevents>

Return samples between two events.

== Syntax

- #raw("tsOut = gettsbetweenevents(ts, firstEvent, secondEvent)");

== Input argument

/ ts: Input timeseries object.
/ firstEvent: Name of the first event.
/ secondEvent: Name of the second event.

== Output argument

/ tsOut: Output timeseries object containing the selected samples.

== Description

#strong[gettsbetweenevents]; Keeps samples whose time is between the named event times, including the boundary samples.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('start', 10));
ts = addevent(ts, tsdata.event('stop', 11));
gettsbetweenevents(ts, 'start', 'stop').Data

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
