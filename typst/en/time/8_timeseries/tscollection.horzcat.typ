#import "../nelson_help.typ": *

= tscollection.horzcat <time:8_timeseries.tscollection.horzcat>

Time series object function.

== Syntax

- #raw("horzcat(...)");

== Description

#strong[horzcat]; operates on timeseries, tscollection, or tsdata metadata objects.


== Example

``````matlab
ts1 = timeseries([1; 2], [10; 11], 'Name', 'a');
ts2 = timeseries([3; 4], [10; 11], 'Name', 'b');
tsc = [tscollection(ts1), tscollection(ts2)];
gettimeseriesnames(tsc)

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
