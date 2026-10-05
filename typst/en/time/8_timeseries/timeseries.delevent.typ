#import "../nelson_help.typ": *

= timeseries.delevent <time:8_timeseries.timeseries.delevent>

Delete an event from a timeseries object.

== Syntax

- #raw("tsOut = delevent(ts, eventName)");

== Input argument

/ ts: Input timeseries object.
/ eventName: Name of the event to remove.

== Output argument

/ tsOut: Output timeseries object with the event removed.

== Description

#strong[delevent]; Removes matching named events from the Events list.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
ts = delevent(ts, 'middle');
numel(ts.Events)

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
