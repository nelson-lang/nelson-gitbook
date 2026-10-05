#import "../nelson_help.typ": *

= tscollection.vertcat <time:8_timeseries.tscollection.vertcat>

Time series object function.

== Syntax

- #raw("vertcat(...)");

== Description

#strong[vertcat]; operates on timeseries, tscollection, or tsdata metadata objects.


== Example

``````matlab
ts1 = timeseries([1], [10], 'Name', 'speed');
ts2 = timeseries([2], [11], 'Name', 'speed');
tsc = [tscollection(ts1); tscollection(ts2)];
tsc.Time

``````


== See also

#nlink(<time:8_timeseries.timeseries>)[timeseries];, #nlink(<time:8_timeseries.tscollection>)[tscollection];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
