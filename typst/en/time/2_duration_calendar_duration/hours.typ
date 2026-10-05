#import "../nelson_help.typ": *

= hours <time:2_duration_calendar_duration.hours>

Create durations from hours or convert durations to hours.

== Syntax

- #raw("d = hours(x)");
- #raw("x = hours(d)");

== Input argument

/ inputs: Numeric hour counts or duration arrays.

== Output argument

/ output: A duration array for numeric input, or double hour counts for duration input.

== Description

Create durations from hours or convert durations to hours.

 hours is an elapsed-time conversion helper. Numeric input is stored as seconds in a duration object with hour display format.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
d = hours([1 2])
seconds(d)
hours(minutes(90))

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
