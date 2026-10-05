#import "../nelson_help.typ": *

= caldays <time:2_duration_calendar_duration.caldays>

Create calendar durations containing whole days.

== Syntax

- #raw("c = caldays(x)");

== Input argument

/ inputs: Numeric day counts.

== Output argument

/ output: A calendarDuration array with day components.

== Description

Create calendar durations containing whole days.

 caldays stores values in the day component of calendarDuration. For fixed elapsed 24-hour durations, use days instead.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
datetime(2024, 1, 1) + caldays(3)

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
