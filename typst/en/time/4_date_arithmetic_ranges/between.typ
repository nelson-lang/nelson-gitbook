#import "../nelson_help.typ": *

= between <time:4_date_arithmetic_ranges.between>

Return calendar durations between two datetime values.

== Syntax

- #raw("c = between(t1, t2)");
- #raw("c = between(t1, t2, components)");

== Input argument

/ inputs: Two datetime or date-compatible inputs and an optional component selector such as years, quarters, months, or days.

== Output argument

/ output: A calendarDuration array.

== Description

Return calendar durations between two datetime values.

 between expresses the interval using whole calendar components plus remaining day and time components. It supports scalar expansion between the two endpoints.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
c = between(datetime(2024, 1, 15), datetime(2024, 3, 20))
split(c, 'months')
split(c, 'days')

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
