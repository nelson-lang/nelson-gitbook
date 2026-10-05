#import "../nelson_help.typ": *

= timeseries.idealfilter <time:8_timeseries.timeseries.idealfilter>

Apply an ideal frequency-domain filter to timeseries data.

== Syntax

- #raw("tsOut = idealfilter(ts, band)");

== Input argument

/ ts: Input timeseries object.
/ band: Two-element frequency band.

== Output argument

/ tsOut: Filtered output timeseries object.

== Description

#strong[idealfilter]; Filters numeric data using the requested ideal frequency band and preserves the time axis.


== Example

``````matlab
ts = timeseries([1; 2; 3], [1; 2; 3]);
ts2 = idealfilter(ts, [0 1]);
size(ts2.Data)

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
