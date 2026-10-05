#import "../nelson_help.typ": *

= calquarters <time:2_duration_calendar_duration.calquarters>

Create calendar durations containing calendar quarters.

== Syntax

- #raw("c = calquarters(x)");

== Input argument

/ inputs: Numeric quarter counts.

== Output argument

/ output: A calendarDuration array with each quarter stored as three months.

== Description

Create calendar durations containing calendar quarters.

 Use calquarters for month-based calendar shifts. This differs from days or duration arithmetic because month lengths vary.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
datetime(2024, 1, 31) + calquarters(1)

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
