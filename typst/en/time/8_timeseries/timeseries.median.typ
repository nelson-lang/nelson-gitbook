#import "../nelson_help.typ": *

= timeseries.median <time:8_timeseries.timeseries.median>

Median of timeseries data.

== Syntax

- #raw("y = median(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ y: Median of the timeseries data.

== Description

#strong[median]; Computes the median of the Data property.


== Example

``````matlab
ts = timeseries([1; 5; 3]);
median(ts)

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
