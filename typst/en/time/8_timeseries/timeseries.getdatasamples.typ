#import "../nelson_help.typ": *

= timeseries.getdatasamples <time:8_timeseries.timeseries.getdatasamples>

Return data samples by index.

== Syntax

- #raw("data = getdatasamples(ts, indices)");

== Input argument

/ ts: Input timeseries object.
/ indices: Sample indices.

== Output argument

/ data: Extracted data samples.

== Description

#strong[getdatasamples]; Extracts data values for the requested sample indices without returning a timeseries wrapper.


== Example

``````matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
getdatasamples(ts, [1 3])

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
