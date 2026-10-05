#import "../nelson_help.typ": *

= timeseries.detrend <time:8_timeseries.timeseries.detrend>

Remove a trend from timeseries data.

== Syntax

- #raw("tsOut = detrend(ts)");
- #raw("tsOut = detrend(ts, 'constant')");

== Input argument

/ ts: Input timeseries object.
/ option: Optional detrend mode.

== Output argument

/ tsOut: Detrended timeseries object.

== Description

#strong[detrend]; Applies detrend to the numeric data and preserves the time axis and metadata.


== Example

``````matlab
ts = timeseries([1; 2; 3], [1; 2; 3]);
ts = detrend(ts, 'constant');
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
