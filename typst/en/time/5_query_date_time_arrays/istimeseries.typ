#import "../nelson_help.typ": *

= istimeseries <time:5_query_date_time_arrays.istimeseries>

Determine whether input is a timeseries object.

== Syntax

- #raw("tf = istimeseries(value)");

== Input argument

/ value: Input value.

== Output argument

/ tf: Logical result.

== Description

#strong[istimeseries]; returns true when the input is a timeseries object.


== Example

``````matlab
ts = timeseries([1; 2], [10; 11]);
istimeseries(ts)

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
