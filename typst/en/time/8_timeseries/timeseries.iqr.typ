#import "../nelson_help.typ": *

= timeseries.iqr <time:8_timeseries.timeseries.iqr>

Interquartile range of timeseries data.

== Syntax

- #raw("y = iqr(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ y: Interquartile range of the timeseries data.

== Description

#strong[iqr]; Computes the interquartile range of the Data property.


== Example

``````matlab
ts = timeseries([1; 2; 3; 4]);
iqr(ts)

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
