#import "../nelson_help.typ": *

= timeseries.eq <time:8_timeseries.timeseries.eq>

Compare two timeseries objects for equality sample by sample.

== Syntax

- #raw("tfTs = eq(a, b)");
- #raw("tfTs = a == b");

== Input argument

/ a: Left timeseries object or scalar.
/ b: Right timeseries object or scalar.

== Output argument

/ tfTs: Resulting timeseries object.

== Description

#strong[eq]; Compares data values while preserving the time axis when a timeseries input is used.


== Example

``````matlab
left = timeseries([1; 2], [1; 2]);
right = timeseries([1; 3], [1; 2]);
out = left == right;
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
