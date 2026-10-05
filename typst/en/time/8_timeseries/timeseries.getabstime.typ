#import "../nelson_help.typ": *

= timeseries.getabstime <time:8_timeseries.timeseries.getabstime>

Return absolute sample times.

== Syntax

- #raw("times = getabstime(ts)");

== Input argument

/ ts: Input timeseries object.

== Output argument

/ times: Absolute sample times as date strings.

== Description

#strong[getabstime]; Converts numeric sample times to absolute date strings using TimeInfo.StartDate and TimeInfo.Units.


== Example

``````matlab
ts = timeseries([1; 2], [0; 1]);
ts = setabstime(ts, '01-Jan-2024');
getabstime(ts)

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
