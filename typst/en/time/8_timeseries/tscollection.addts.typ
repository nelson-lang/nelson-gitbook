#import "../nelson_help.typ": *

= tscollection.addts <time:8_timeseries.tscollection.addts>

Time series helper function.

== Syntax

- #raw("addts(...)");

== Description

#strong[addts]; operates on timeseries or tscollection objects.


== Example

``````matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1);
tsc = addts(tsc, count2);
tsc.Intersection2.Data

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
