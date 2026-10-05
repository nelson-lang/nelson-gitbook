#import "../nelson_help.typ": *

= timeseries.uminus <time:8_timeseries.timeseries.uminus>

Negate timeseries data.

== Syntax

- #raw("tsOut = uminus(ts)");
- #raw("tsOut = -ts");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ tsOut: Output timeseries object with negated data values.

== Description

#strong[uminus]; Negates the Data property and preserves time and metadata.


== Example

``````matlab
ts = timeseries([1; -2], [1; 2]);
out = -ts;
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
