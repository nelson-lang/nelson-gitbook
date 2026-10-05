#import "../nelson_help.typ": *

= timeseries.addsample <time:8_timeseries.timeseries.addsample>

Add one sample to a timeseries object.

== Syntax

- #raw("tsOut = addsample(ts, 'Time', t, 'Data', x)");
- #raw("tsOut = addsample(ts, 'Time', t, 'Data', x, 'Quality', q)");

== Input argument

/ ts: Input timeseries object.
/ t: Sample time to append.
/ x: Sample data to append.
/ q: Optional quality value.

== Output argument

/ tsOut: Output timeseries object with the sample added.

== Description

#strong[addsample]; Appends a sample using name-value pairs. Existing sample order is preserved by the append operation.


== Example

``````matlab
ts = timeseries([1; 2], [10; 11], 'Name', 'speed');
ts = addsample(ts, 'Time', 12, 'Data', 3);
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
