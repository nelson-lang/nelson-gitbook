#import "../nelson_help.typ": *

= milliseconds <time:2_duration_calendar_duration.milliseconds>

Create durations from milliseconds or convert durations to milliseconds.

== Syntax

- #raw("d = milliseconds(x)");
- #raw("x = milliseconds(d)");

== Input argument

/ inputs: Numeric millisecond counts or duration arrays.

== Output argument

/ output: A duration array for numeric input, or double millisecond counts for duration input.

== Description

Create durations from milliseconds or convert durations to milliseconds.

 Numeric input is divided by 1000 before storage as elapsed seconds. Duration input is multiplied by 1000.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
d = milliseconds([250 500])
seconds(d)
milliseconds(seconds(2))

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
