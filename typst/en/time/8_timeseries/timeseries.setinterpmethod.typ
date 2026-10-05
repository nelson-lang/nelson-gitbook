#import "../nelson_help.typ": *

= timeseries.setinterpmethod <time:8_timeseries.timeseries.setinterpmethod>

Set the interpolation method.

== Syntax

- #raw("tsOut = setinterpmethod(ts, method)");

== Input argument

/ ts: Input timeseries object.
/ method: Interpolation method: linear, zoh, or nearest.

== Output argument

/ tsOut: Output timeseries object with the interpolation method set.

== Description

#strong[setinterpmethod]; Updates ts.DataInfo.Interpolation using the requested interpolation method.


== Example

``````matlab
ts = timeseries([1; 2; 3]);
ts = setinterpmethod(ts, 'zoh');
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
