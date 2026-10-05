#import "../nelson_help.typ": *

= calmonths <time:2_duration_calendar_duration.calmonths>

Create calendar durations containing calendar months.

== Syntax

- #raw("c = calmonths(x)");

== Input argument

/ inputs: Numeric month counts.

== Output argument

/ output: A calendarDuration array with month components.

== Description

Create calendar durations containing calendar months.

 Month arithmetic handles variable month lengths and clamps to the end of the destination month when necessary.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
datetime(2024, 1, 31) + calmonths(1)

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
