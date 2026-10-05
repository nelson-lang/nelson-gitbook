#import "../nelson_help.typ": *

= timeseries.sum <time:8_timeseries.timeseries.sum>

Sum of timeseries data.

== Syntax

- #raw("y = sum(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ y: Sum of the timeseries data.

== Description

#strong[sum]; Computes the sum of the Data property.


== Example

``````matlab
ts = timeseries([1; 2; 3]);
sum(ts)

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
