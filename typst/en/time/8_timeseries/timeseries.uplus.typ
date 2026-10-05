#import "../nelson_help.typ": *

= timeseries.uplus <time:8_timeseries.timeseries.uplus>

Unary plus for timeseries data.

== Syntax

- #raw("tsOut = uplus(ts)");
- #raw("tsOut = +ts");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ tsOut: Output timeseries object with unchanged data values.

== Description

#strong[uplus]; Returns a timeseries with unchanged data.


== Example

``````matlab
ts = timeseries([1; 2], [1; 2]);
out = +ts;
out.Data

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
