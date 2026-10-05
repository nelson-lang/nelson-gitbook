#import "../nelson_help.typ": *

= year <time:3_date_time_components.year>

Extract year numbers from date and time values.

== Syntax

- #raw("y = year(t)");

== Input argument

/ inputs: datetime values, serial date numbers, or date-compatible input.

== Output argument

/ output: A double array of calendar years.

== Description

Extract year numbers from date and time values.

 year uses datevec for numeric date inputs and the Year dependent property for datetime inputs.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
t = datetime(2024, [1 12], [1 31])
year(t)

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
