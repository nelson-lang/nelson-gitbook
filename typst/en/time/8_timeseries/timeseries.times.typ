#import "../nelson_help.typ": *

= timeseries.times <time:8_timeseries.timeseries.times>

Element-wise multiplication of timeseries data.

== Syntax

- #raw("tsOut = times(a, b)");
- #raw("tsOut = a .* b");

== Input argument

/ a: Left timeseries object or scalar.
/ b: Right timeseries object or scalar.

== Output argument

/ tsOut: Resulting timeseries object.

== Description

#strong[times]; Multiplies data values element by element and preserves the time axis from a timeseries input.


== Example

``````matlab
ts = timeseries([1; 2], [1; 2]);
out = ts .* 10;
out.Data

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
