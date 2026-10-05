#import "../nelson_help.typ": *

= posixtime <time:6_text_and_external_time_systems.posixtime>

Convert datetime values to seconds elapsed since the POSIX epoch.

== Syntax

- #raw("p = posixtime(t)");

== Input argument

/ inputs: A datetime array.

== Output argument

/ output: A double array of elapsed seconds since 1970-01-01 00:00:00.

== Description

Convert datetime values to seconds elapsed since the POSIX epoch.

 posixtime is useful for interchange with systems that represent times as seconds from the Unix epoch.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
posixtime(datetime(1970, 1, 1))
posixtime(datetime(1970, 1, 2))

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
