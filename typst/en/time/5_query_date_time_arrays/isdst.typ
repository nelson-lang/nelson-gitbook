#import "../nelson_help.typ": *

= isdst <time:5_query_date_time_arrays.isdst>

Test whether timezone-aware datetime values are in daylight saving time.

== Syntax

- #raw("tf = isdst(t)");

== Input argument

/ inputs: A datetime array with a TimeZone property.

== Output argument

/ output: A logical array.

== Description

Test whether timezone-aware datetime values are in daylight saving time.

 isdst uses the embedded timezone rules for named zones. Fixed offsets do not have daylight saving transitions.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
isdst(datetime(2024, 1, 1, 'TimeZone', 'Europe/Paris'))
isdst(datetime(2024, 7, 1, 'TimeZone', 'Europe/Paris'))

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
