#import "../nelson_help.typ": *

= timeseries.max <time:8_timeseries.timeseries.max>

Maximum of timeseries data.

== Syntax

- #raw("y = max(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ y: Maximum of the timeseries data.

== Description

#strong[max]; Computes the maximum over the Data property.


== Example

``````matlab
ts = timeseries([1; 3; 2]);
max(ts)

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
