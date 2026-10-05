#import "../nelson_help.typ": *

= day <time:3_date_time_components.day>

Extract day information from date and time values.

== Syntax

- #raw("d = day(t)");
- #raw("d = day(t, 'dayofmonth')");
- #raw("d = day(t, 'dayofyear')");
- #raw("name = day(t, 'name')");
- #raw("abbr = day(t, 'shortname')");

== Input argument

/ inputs: datetime values, serial date numbers, or date-compatible input, plus optional day selector.

== Output argument

/ output: A double day array or string day-name array.

== Description

Extract day information from date and time values.

 The default is day of month. dayofyear counts from January 1. name and shortname return weekday names.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
t = datetime(2024, 2, 29)
day(t)
day(t, 'dayofyear')

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
