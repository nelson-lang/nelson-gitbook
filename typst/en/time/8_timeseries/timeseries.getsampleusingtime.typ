#import "../nelson_help.typ": *

= timeseries.getsampleusingtime <time:8_timeseries.timeseries.getsampleusingtime>

Return samples selected by time.

== Syntax

- #raw("tsOut = getsampleusingtime(ts, t)");
- #raw("tsOut = getsampleusingtime(ts, t1, t2)");

== Input argument

/ ts: Input timeseries object.
/ t: Exact sample time.
/ t1: Start time.
/ t2: End time.

== Output argument

/ tsOut: Timeseries with the selected samples.

== Description

#strong[getsampleusingtime]; Selects samples at exact times or in a closed time interval.


== Example

``````matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
ts2 = getsampleusingtime(ts, 2, 3);
ts2.Data

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
