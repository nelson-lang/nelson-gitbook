#import "../nelson_help.typ": *

= timezones <time:5_query_date_time_arrays.timezones>

List timezone names available in the embedded timezone data.

== Syntax

- #raw("zones = timezones()");
- #raw("[zones, version] = timezones()");

== Input argument

/ inputs: No input arguments.

== Output argument

/ output: A string array of zone names and, optionally, a data version string.

== Description

List timezone names available in the embedded timezone data.

 The list includes zones supplied by the small embedded timezone database and the local pseudo-zone.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
[zones, version] = timezones()
any(strcmp(cellstr(zones), 'Europe/Paris'))

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
