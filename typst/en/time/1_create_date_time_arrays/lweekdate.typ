#import "../nelson_help.typ": *

= lweekdate <time:1_create_date_time_arrays.lweekdate>

Return the last selected weekday in a month.

== Syntax

- #raw("d = lweekdate(weekdayNumber, yearNumber, monthNumber)");

== Input argument

/ inputs: Weekday number, year number, and month number.

== Output argument

/ output: A serial date number.

== Description

Return the last selected weekday in a month.

 Weekday numbers follow weekday. The function starts from month end and steps backward to the requested weekday.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
datestr(lweekdate(6, 2024, 5))

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
