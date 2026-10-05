#import "../nelson_help.typ": *

= retime <table:8_timetables_events.retime>

Adjust timetable data to new row times.

== Syntax

- #raw("TT2 = retime(TT1, newTimes)");
- #raw("TT2 = retime(TT1, newTimes, method)");
- #raw("TT2 = retime(TT1, newTimeStep, method)");
- #raw("TT2 = retime(TT1, 'regular', method, 'TimeStep', dt)");
- #raw("TT2 = retime(TT1, 'regular', method, 'SampleRate', Fs)");

== Input argument

/ TT1: Input timetable.
/ newTimes: New datetime or duration row times.
/ newTimeStep: Named regular time step such as 'daily', 'hourly', or 'secondly'.
/ method: Fill, nearest-neighbor, interpolation, or aggregation method.

== Output argument

/ TT2: Retimed timetable.

== Description

#strong[retime]; returns a timetable whose row times match #strong[newTimes]; or a regular time grid.

 Supported fill and nearest-neighbor methods include fillwithmissing, fillwithconstant, nearest, previous, and next.

 Supported numeric interpolation methods include linear, spline, pchip, and makima. Supported aggregation methods include sum, mean, min, max, median, prod, count, firstvalue, and lastvalue.


== Example

``````matlab
t = datetime(2024, 1, 1) + days(0:2)';
TT = timetable(t, [1; 3; 5]);
TT2 = retime(TT, t(1):days(1):t(3), 'nearest')
``````


== See also

#nlink(<table:8_timetables_events.synchronize>)[synchronize];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
