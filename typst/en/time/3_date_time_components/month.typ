#import "../nelson_help.typ": *

= month <time:3_date_time_components.month>

Extract month numbers or names from date and time values.

== Syntax

- #raw("m = month(t)");
- #raw("name = month(t, 'name')");
- #raw("abbr = month(t, 'shortname')");

== Input argument

/ inputs: datetime values, serial date numbers, or date-compatible input, plus optional name output selector.

== Output argument

/ output: A double array of month numbers, or a string array of month names.

== Description

Extract month numbers or names from date and time values.

 Use name for full English month names and shortname for abbreviated names.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
month(datetime(2024, 5, 17))
month(datetime(2024, 5, 17), 'name')

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
