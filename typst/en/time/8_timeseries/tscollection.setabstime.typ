#import "../nelson_help.typ": *

= tscollection.setabstime <time:8_timeseries.tscollection.setabstime>

Time series helper function.

== Syntax

- #raw("setabstime(...)");

== Description

#strong[setabstime]; operates on timeseries or tscollection objects.


== Example

``````matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
tsc = setabstime(tsc, '01-Jan-2024');
tsc.TimeInfo.StartDate

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
