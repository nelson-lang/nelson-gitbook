#import "../nelson_help.typ": *

= timeseries.std <time:8_timeseries.timeseries.std>

Standard deviation of timeseries data.

== Syntax

- #raw("y = std(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ y: Standard deviation of the timeseries data.

== Description

#strong[std]; Computes the standard deviation of the Data property.


== Example

``````matlab
ts = timeseries([1; 2; 3]);
std(ts)

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
