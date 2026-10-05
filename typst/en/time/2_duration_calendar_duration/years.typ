#import "../nelson_help.typ": *

= years <time:2_duration_calendar_duration.years>

Create durations from years or convert durations to years.

== Syntax

- #raw("d = years(x)");
- #raw("x = years(d)");

== Input argument

/ inputs: Numeric year counts or duration arrays.

== Output argument

/ output: A duration array for numeric input, or double year counts for duration input.

== Description

Create durations from years or convert durations to years.

 A year is treated as 365.2425 days for elapsed-time duration conversion. For calendar-year arithmetic, use calyears.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
d = years([1 2])
seconds(d)
years(d)

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
