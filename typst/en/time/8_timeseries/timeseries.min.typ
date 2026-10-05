#import "../nelson_help.typ": *

= timeseries.min <time:8_timeseries.timeseries.min>

Minimum of timeseries data.

== Syntax

- #raw("y = min(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ y: Minimum of the timeseries data.

== Description

#strong[min]; Computes the minimum over the Data property.


== Example

``````matlab
ts = timeseries([2; 1; 3]);
min(ts)

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
