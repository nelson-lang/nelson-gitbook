#import "../nelson_help.typ": *

= timeseries.plus <time:8_timeseries.timeseries.plus>

Add timeseries data.

== Syntax

- #raw("tsOut = plus(a, b)");
- #raw("tsOut = a + b");

== Input argument

/ a: Left timeseries object or scalar.
/ b: Right timeseries object or scalar.

== Output argument

/ tsOut: Resulting timeseries object.

== Description

#strong[plus]; Adds data values and preserves the time axis from a timeseries input.


== Example

``````matlab
a = timeseries([1; 2], [1; 2]);
b = timeseries([10; 20], [1; 2]);
out = a + b;
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
