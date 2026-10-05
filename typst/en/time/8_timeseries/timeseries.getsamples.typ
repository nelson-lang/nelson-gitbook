#import "../nelson_help.typ": *

= timeseries.getsamples <time:8_timeseries.timeseries.getsamples>

Return a timeseries subset by index.

== Syntax

- #raw("tsOut = getsamples(ts, indices)");

== Input argument

/ ts: Input timeseries object.
/ indices: Sample indices to keep.

== Output argument

/ tsOut: Timeseries subset with the selected samples.

== Description

#strong[getsamples]; Selects samples and preserves events and metadata.


== Example

``````matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
ts2 = getsamples(ts, 2:3);
ts2.Time

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
