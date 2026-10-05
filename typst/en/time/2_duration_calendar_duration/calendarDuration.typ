#import "../nelson_help.typ": *

= calendarDuration <time:2_duration_calendar_duration.calendarDuration>

Create calendar durations with month, day, and time components.

== Syntax

- #raw("c = calendarDuration(y, mo, d)");
- #raw("c = calendarDuration(y, mo, d, h, mi, s)");
- #raw("c = calendarDuration(x)");

== Input argument

/ inputs: Calendar years, months, days, and optional time components, or numeric arrays.

== Output argument

/ output: A calendarDuration array storing months, days, seconds, and a display format.

== Description

Create calendar durations with month, day, and time components.

 Calendar durations preserve calendar semantics when added to datetimes. Month-based arithmetic clamps dates to month ends when needed.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
c = calendarDuration(0, 1, 3)
t = datetime(2024, 1, 31) + c

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
