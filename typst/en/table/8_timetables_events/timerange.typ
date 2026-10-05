#import "../nelson_help.typ": *

= timerange <table:8_timetables_events.timerange>

Time range for timetable row subscripting.

== Syntax

- #raw("S = timerange(startTime, endTime)");
- #raw("S = timerange(startTime, endTime, intervalType)");
- #raw("S = timerange(timePeriod, datetimeUnit)");

== Input argument

/ startTime, endTime: Datetime, duration, or text scalar limits.
/ intervalType: 'openright', 'closedleft', 'openleft', 'closedright', 'open', or 'closed'.
/ datetimeUnit: Calendar unit used to span a full period.

== Output argument

/ S: Timetable row subscript.

== Description

#strong[timerange]; creates a row subscript for timetables. The default interval is half-open: it includes the start time and excludes the end time.

 Text limits #strong['-inf']; and #strong['inf']; create one-sided ranges.


== Example

``````matlab
TT = timetable(seconds((1:5)'), (10:10:50)', 'VariableNames', {'A'});
TT(timerange(seconds(2), seconds(4), 'closed'), :)
``````


== See also

#nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<table:8_timetables_events.withtol>)[withtol];, #nlink(<table:8_timetables_events.retime>)[retime];, #nlink(<table:8_timetables_events.synchronize>)[synchronize];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
