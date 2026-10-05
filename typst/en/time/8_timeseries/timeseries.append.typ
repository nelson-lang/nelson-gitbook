#import "../nelson_help.typ": *

= timeseries.append <time:8_timeseries.timeseries.append>

Append timeseries samples.

== Syntax

- #raw("tsOut = append(ts1, ts2)");
- #raw("tsOut = append(ts1, ts2, ts3)");

== Input argument

/ ts1: First timeseries object.
/ ts2: Timeseries object to append.

== Output argument

/ tsOut: Output timeseries object with the appended samples.

== Description

#strong[append]; Concatenates samples from two or more timeseries objects along the sample dimension.


== Example

``````matlab
ts1 = timeseries([1; 2], [10; 11], 'Name', 'speed');
ts2 = timeseries(3, 12, 'Name', 'speed');
ts = append(ts1, ts2);
ts.Data

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
