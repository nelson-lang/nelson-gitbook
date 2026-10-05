#import "../nelson_help.typ": *

= hms <time:3_date_time_components.hms>

Split datetime or duration values into hour, minute, and second components.

== Syntax

- #raw("[h, m, s] = hms(t)");

== Input argument

/ inputs: datetime, duration, serial date number, or date-compatible input.

== Output argument

/ output: Three double arrays containing hour, minute, and second values.

== Description

Split datetime or duration values into hour, minute, and second components.

 For duration input, the hour part may exceed 23 because it represents elapsed hours. For datetime input, the hour part is the time-of-day hour.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
[h, m, s] = hms(duration(27, 5, 6))
[h, m, s] = hms(datetime(2024, 5, 17, 13, 14, 15))

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
