#import "../nelson_help.typ": *

= timeofday <time:3_date_time_components.timeofday>

Return the elapsed time since midnight for datetime values.

== Syntax

- #raw("d = timeofday(t)");

== Input argument

/ inputs: A datetime array.

== Output argument

/ output: A duration array containing the time-of-day component.

== Description

Return the elapsed time since midnight for datetime values.

 timeofday discards the calendar date and keeps only the fractional day, expressed as a duration with hh:mm:ss display format.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
d = timeofday(datetime(2024, 1, 1, 12, 30, 0))
seconds(d)

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
