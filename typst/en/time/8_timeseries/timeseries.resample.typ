#import "../nelson_help.typ": *

= timeseries.resample <time:8_timeseries.timeseries.resample>

Resample a timeseries object at new times.

== Syntax

- #raw("tsOut = resample(ts, newTime)");
- #raw("tsOut = resample(ts, newTime, method)");

== Input argument

/ ts: Input timeseries object.
/ newTime: New sample times.
/ method: Optional interpolation method: linear, zoh, or nearest.

== Output argument

/ tsOut: Resampled output timeseries object.

== Description

#strong[resample]; Interpolates data onto a new time vector and updates Time while preserving metadata.


== Example

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
ts2 = resample(ts, [10; 10.5; 11]);
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
