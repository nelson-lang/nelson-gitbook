#import "../nelson_help.typ": *

= tsdata.datametadata <time:8_timeseries.tsdata.datametadata>

Time series object function.

== Syntax

- #raw("datametadata(...)");

== Description

#strong[datametadata]; operates on timeseries, tscollection, or tsdata metadata objects.


== Example

``````matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1.DataInfo.Units = 'cars';
count1.DataInfo.Interpolation = tsdata.interpolation('zoh');
count1.DataInfo

``````


== See also

#nlink(<time:8_timeseries.timeseries>)[timeseries];, #nlink(<time:8_timeseries.tscollection>)[tscollection];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
