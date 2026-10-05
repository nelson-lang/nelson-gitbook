#import "../nelson_help.typ": *

= week <time:3_date_time_components.week>

Compute week numbers within the calendar year.

== Syntax

- #raw("w = week(t)");

== Input argument

/ inputs: datetime values, serial date numbers, or date-compatible input.

== Output argument

/ output: A double array of week numbers starting at 1.

== Description

Compute week numbers within the calendar year.

 The implementation counts seven-day blocks from January 1 of each year.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
week(datetime(2024, 1, 1))
week(datetime(2024, 1, 8))

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
