#import "../nelson_help.typ": *

= timeseries.delsample <time:8_timeseries.timeseries.delsample>

Delete samples from a timeseries object.

== Syntax

- #raw("tsOut = delsample(ts, 'Index', indices)");
- #raw("tsOut = delsample(ts, 'Time', times)");

== Input argument

/ ts: Input timeseries object.
/ indices: Sample indices to delete.
/ times: Sample times to delete.

== Output argument

/ tsOut: Output timeseries object with the samples removed.

== Description

#strong[delsample]; Removes samples selected by index or by exact time values.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = delsample(ts, 'Index', 2);
ts.Data

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
