#import "../nelson_help.typ": *

= juliandate <time:6_text_and_external_time_systems.juliandate>

Convert datetime values to Julian date numbers.

== Syntax

- #raw("j = juliandate(t)");

== Input argument

/ inputs: A datetime array.

== Output argument

/ output: A double array of Julian date numbers.

== Description

Convert datetime values to Julian date numbers.

 The conversion adds the Julian date offset to Nelson serial date numbers.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
juliandate(datetime(2000, 1, 1))

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
