#import "../nelson_help.typ": *

= timeseries.getinterpmethod <time:8_timeseries.timeseries.getinterpmethod>

Return the interpolation method name.

== Syntax

- #raw("method = getinterpmethod(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ method: Interpolation method name.

== Description

#strong[getinterpmethod]; Reads the interpolation method stored in ts.DataInfo.Interpolation.


== Example

``````matlab
ts = timeseries([1; 2; 3]);
ts = setinterpmethod(ts, 'nearest');
getinterpmethod(ts)

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
