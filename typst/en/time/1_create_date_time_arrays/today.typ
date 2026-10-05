#import "../nelson_help.typ": *

= today <time:1_create_date_time_arrays.today>

Return the serial date number for the current day.

== Syntax

- #raw("t = today()");

== Input argument

/ inputs: No input arguments.

== Output argument

/ output: A scalar serial date number with no time-of-day fraction.

== Description

Return the serial date number for the current day.

 today is equivalent to floor(now()) at the time of the call.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
t = today()
t == floor(t)

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
