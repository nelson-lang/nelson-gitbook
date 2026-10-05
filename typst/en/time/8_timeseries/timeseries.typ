#import "../nelson_help.typ": *

= timeseries <time:8_timeseries.timeseries>

Create time series data.

== Syntax

- #raw("ts = timeseries(data)");
- #raw("ts = timeseries(data, time)");
- #raw("ts = timeseries(data, time, quality)");
- #raw("ts = timeseries(data, time, 'Name', name)");

== Input argument

/ data: Sample data.
/ time: Numeric, duration, datetime, or date text sample times.
/ quality: Optional quality values.

== Output argument

/ ts: A timeseries object.

== Description

#strong[timeseries]; stores sampled data, sample times, optional quality values, metadata, and events.

 Methods provide sample selection, event selection, interpolation, synchronization, statistics, arithmetic, plotting, and conversion to timetable.


== Example

``````matlab
x = [-0.2 -0.3 13; -0.1 -0.4 15; NaN 2.8 17; 0.5 0.3 NaN; -0.3 -0.1 15];
tsPosition = timeseries(x(:, 1:2), (1:5)', 'Name', 'Position');
getdatasamplesize(tsPosition)

``````


== See also

#nlink(<time:8_timeseries.tscollection>)[tscollection];, #nlink(<time:5_query_date_time_arrays.istimeseries>)[istimeseries];, #nlink(<table:1_create_convert_tables.timeseries2timetable>)[timeseries2timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
