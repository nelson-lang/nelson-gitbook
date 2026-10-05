#import "../nelson_help.typ": *

= nweekdate <time:1_create_date_time_arrays.nweekdate>

Return the nth selected weekday in a month.

== Syntax

- #raw("d = nweekdate(n, weekdayNumber, yearNumber, monthNumber)");

== Input argument

/ inputs: Occurrence number, weekday number, year number, and month number.

== Output argument

/ output: A serial date number, or NaN when the requested occurrence does not exist.

== Description

Return the nth selected weekday in a month.

 Weekday numbers follow weekday: Sunday is 1 and Saturday is 7.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
datestr(nweekdate(2, 2, 2024, 1))
nweekdate(5, 2, 2024, 2)

``````


== See also

#nlink(<time:1_create_date_time_arrays.datetime>)[datetime];, #nlink(<time:2_duration_calendar_duration.duration>)[duration];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
