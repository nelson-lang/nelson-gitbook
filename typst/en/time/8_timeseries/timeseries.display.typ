#import "../nelson_help.typ": *

= timeseries.display <time:8_timeseries.timeseries.display>

Display a timeseries object.

== Syntax

- #raw("display(ts)");

== Input argument

/ ts: A timeseries object.

== Description

#strong[display]; prints a timeseries object with its variable name when available.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
display(ts)

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
