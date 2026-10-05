#import "../nelson_help.typ": *

= timeseries.mode <time:8_timeseries.timeseries.mode>

Mode of timeseries data.

== Syntax

- #raw("y = mode(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ y: Mode of the timeseries data.

== Description

#strong[mode]; Computes the mode of the Data property.


== Example

``````matlab
ts = timeseries([1; 2; 2; 3]);
mode(ts)

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
