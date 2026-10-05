#import "../nelson_help.typ": *

= timeseries.setuniformtime <time:8_timeseries.timeseries.setuniformtime>

Set a uniformly spaced time vector.

== Syntax

- #raw("tsOut = setuniformtime(ts, 'StartTime', startTime, 'Interval', step, 'Length', n)");

== Input argument

/ ts: Input timeseries object.
/ startTime: First sample time.
/ step: Uniform spacing between samples.
/ n: Number of samples.

== Output argument

/ tsOut: Output timeseries object with a uniformly spaced time vector.

== Description

#strong[setuniformtime]; Generates a uniform time vector from name-value settings and assigns it to the object.


== Example

``````matlab
ts = timeseries([1; 2; 3; 4]);
ts = setuniformtime(ts, 'StartTime', 0, 'Interval', 2, 'Length', 4);
ts.Time

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
