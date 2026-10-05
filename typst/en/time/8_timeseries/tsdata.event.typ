#import "../nelson_help.typ": *

= tsdata.event <time:8_timeseries.tsdata.event>

Time series object function.

== Syntax

- #raw("event(...)");

== Description

#strong[event]; operates on timeseries, tscollection, or tsdata metadata objects.


== Example

``````matlab
morning = tsdata.event('AMCommute', 2);
morning.Units = 'hours';
morning.Time

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
