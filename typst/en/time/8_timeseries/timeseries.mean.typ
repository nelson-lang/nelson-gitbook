#import "../nelson_help.typ": *

= timeseries.mean <time:8_timeseries.timeseries.mean>

Mean of timeseries data.

== Syntax

- #raw("y = mean(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ y: Mean of the timeseries data.

== Description

#strong[mean]; Computes the arithmetic mean of the Data property.


== Example

``````matlab
ts = timeseries([1; 2; 3]);
mean(ts)

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
