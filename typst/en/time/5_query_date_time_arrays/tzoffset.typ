#import "../nelson_help.typ": *

= tzoffset <time:5_query_date_time_arrays.tzoffset>

Return UTC offsets for timezone-aware datetime values.

== Syntax

- #raw("d = tzoffset(t)");

== Input argument

/ inputs: A datetime array whose TimeZone property is empty, a fixed offset, local, or a supported timezone name.

== Output argument

/ output: A duration array containing offsets from UTC.

== Description

Return UTC offsets for timezone-aware datetime values.

 Named timezone offsets are read from the embedded timezone data. Fixed offsets such as +02:30 are parsed directly.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
tzoffset(datetime(2024, 7, 1, 'TimeZone', 'Europe/Paris'))
tzoffset(datetime(2024, 1, 1, 'TimeZone', '+02:30'))

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
