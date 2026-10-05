#import "../nelson_help.typ": *

= timeseries.synchronize <time:8_timeseries.timeseries.synchronize>

Synchronize two or more timeseries objects.

== Syntax

- #raw("[ts1Out, ts2Out] = synchronize(ts1, ts2)");
- #raw("[out1, out2, out3] = synchronize(ts1, ts2, ts3)");

== Input argument

/ ts1: First timeseries object.
/ ts2: Second timeseries object.

== Output argument

/ ts1Out: First input timeseries resampled on the common time vector.
/ ts2Out: Second input timeseries resampled on the common time vector.

== Description

#strong[synchronize]; Builds a common time vector from all input objects and resamples each series on that vector.


== Example

``````matlab
a = timeseries([1; 2], [1; 2]);
b = timeseries([10; 30], [1; 3]);
[a2, b2] = synchronize(a, b);
b2.Time

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
