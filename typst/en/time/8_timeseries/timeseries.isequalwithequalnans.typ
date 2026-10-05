#import "../nelson_help.typ": *

= timeseries.isequalwithequalnans <time:8_timeseries.timeseries.isequalwithequalnans>

Compare timeseries objects treating missing numeric values as equal.

== Syntax

- #raw("tf = isequalwithequalnans(ts1, ts2, ts3)");

== Input argument

/ ts1: First timeseries object.
/ ts2: Timeseries object to compare.

== Output argument

/ tf: Logical result of the comparison.

== Description

#strong[isequalwithequalnans]; Compares timeseries objects and treats matching missing numeric values as equal.


== Example

``````matlab
ts1 = timeseries([1; NaN], [1; 2]);
ts2 = timeseries([1; NaN], [1; 2]);
isequalwithequalnans(ts1, ts2)

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
