#import "../nelson_help.typ": *

= timeseries.loadobj <time:8_timeseries.timeseries.loadobj>

Restore a timeseries object from saved data.

== Syntax

- #raw("ts = timeseries.loadobj(value)");

== Input argument

/ value: A timeseries object or a structure containing timeseries storage fields.

== Output argument

/ ts: A timeseries object.

== Description

#strong[timeseries.loadobj]; rebuilds a timeseries object from an object or saved structure.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
state = struct(ts);
copy = timeseries.loadobj(state);
copy.Name

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
