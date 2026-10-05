#import "../nelson_help.typ": *

= minutes <time:2_duration_calendar_duration.minutes>

Create durations from minutes or convert durations to minutes.

== Syntax

- #raw("d = minutes(x)");
- #raw("x = minutes(d)");

== Input argument

/ inputs: Numeric minute counts or duration arrays.

== Output argument

/ output: A duration array for numeric input, or double minute counts for duration input.

== Description

Create durations from minutes or convert durations to minutes.

 minutes stores elapsed time as seconds internally and provides convenient construction and extraction in minute units.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
d = minutes([30 90])
seconds(d)
minutes(hours(2))

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
