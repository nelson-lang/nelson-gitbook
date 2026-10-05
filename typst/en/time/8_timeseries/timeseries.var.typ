#import "../nelson_help.typ": *

= timeseries.var <time:8_timeseries.timeseries.var>

Variance of timeseries data.

== Syntax

- #raw("y = var(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ y: Variance of the timeseries data.

== Description

#strong[var]; Computes the variance of the Data property.


== Example

``````matlab
ts = timeseries([1; 2; 3]);
var(ts)

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
