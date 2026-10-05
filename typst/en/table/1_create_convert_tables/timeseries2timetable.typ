#import "../nelson_help.typ": *

= timeseries2timetable <table:1_create_convert_tables.timeseries2timetable>

Convert time series data to timetable.

== Syntax

- #raw("TT = timeseries2timetable(ts)");
- #raw("TT = timeseries2timetable(ts1, ..., tsN)");
- #raw("TT = timeseries2timetable(tsArray)");

== Input argument

/ ts: Time series data.
/ ts1, ..., tsN: Time series sharing the same time vector, TimeInfo Units and TimeInfo StartDate.
/ tsArray: Nonempty timeseries array, converted in column order. It must be the only input.

== Output argument

/ TT: Timetable object.

== Description

#strong[timeseries2timetable]; converts a timeseries object to a timetable.

 Relative numeric times are converted to duration row times. Absolute time metadata is converted to datetime row times.

 Each time series becomes one variable, named after the #strong[Name]; property of the time series, or #strong[Data]; when it is empty. Duplicate names are made unique. To combine time series with different time vectors, convert each one separately and use #strong[synchronize];.


== Example

``````matlab
ts = timeseries([1; 2; 3], [0; 1; 2], 'Name', 'speed');
TT = timeseries2timetable(ts)

``````


== See also

#nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
