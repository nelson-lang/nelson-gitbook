#import "../nelson_help.typ": *

= timeseries.getdatasamplesize <time:8_timeseries.timeseries.getdatasamplesize>

Return the size of one data sample.

== Syntax

- #raw("sz = getdatasamplesize(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ sz: Size of a single data sample.

== Description

#strong[getdatasamplesize]; Reports the dimensions of a single sample, excluding the time dimension.


== Example

``````matlab
ts = timeseries([1 10; 2 20; 3 30], [1; 2; 3]);
getdatasamplesize(ts)

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
