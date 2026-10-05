#import "../nelson_help.typ": *

= tscollection.loadobj <time:8_timeseries.tscollection.loadobj>

Restore a time series collection object from saved data.

== Syntax

- #raw("tsc = tscollection.loadobj(value)");

== Input argument

/ value: A tscollection object or a structure containing collection storage fields.

== Output argument

/ tsc: A tscollection object.

== Description

#strong[tscollection.loadobj]; rebuilds a collection from an object or saved structure.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
tsc = tscollection(ts, 'Name', 'run');
state = struct(tsc);
copy = tscollection.loadobj(state);
gettimeseriesnames(copy)

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
