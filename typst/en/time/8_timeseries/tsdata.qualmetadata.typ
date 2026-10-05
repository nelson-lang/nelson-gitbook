#import "../nelson_help.typ": *

= tsdata.qualmetadata <time:8_timeseries.tsdata.qualmetadata>

Time series object function.

== Syntax

- #raw("qualmetadata(...)");

== Description

#strong[qualmetadata]; operates on timeseries, tscollection, or tsdata metadata objects.


== Example

``````matlab
info = tsdata.qualmetadata('Code', [1], 'Description', {'ok'});
info.Description

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
