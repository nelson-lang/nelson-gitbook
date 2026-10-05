#import "../nelson_help.typ": *

= tscollection.display <time:8_timeseries.tscollection.display>

Display a time series collection object.

== Syntax

- #raw("display(tsc)");

== Input argument

/ tsc: A tscollection object.

== Description

#strong[display]; prints collection time limits and member time series names.


== Example

``````matlab
count1 = timeseries([11; 7; 14], (1:3)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12], (1:3)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
display(tsc)

``````


== See also

#nlink(<time:8_timeseries.tscollection>)[tscollection];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
