#import "../nelson_help.typ": *

= timeseries.mldivide <time:8_timeseries.timeseries.mldivide>

Matrix left division for timeseries data.

== Syntax

- #raw("tsOut = mldivide(a, b)");
- #raw("tsOut = a \\ b");

== Input argument

/ a: Left timeseries object or scalar.
/ b: Right timeseries object or scalar.

== Output argument

/ tsOut: Resulting timeseries object.

== Description

#strong[mldivide]; Applies matrix left division to data values and preserves the time axis from a timeseries input.


== Example

``````matlab
ts = timeseries([10; 20], [1; 2]);
out = 10 \ ts;
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
