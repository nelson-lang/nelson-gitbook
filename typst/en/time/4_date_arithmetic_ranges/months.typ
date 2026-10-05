#import "../nelson_help.typ": *

= months <time:4_date_arithmetic_ranges.months>

Return whole calendar months between two dates.

== Syntax

- #raw("m = months(t1, t2)");

== Input argument

/ inputs: Two datetime or date-compatible inputs with matching sizes or scalar expansion.

== Output argument

/ output: A double array of whole month counts.

== Description

Return whole calendar months between two dates.

 The result counts completed calendar months and adjusts when the second day-of-month is before the first.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
months(datetime(2024, 1, 31), datetime(2024, 3, 30))

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
