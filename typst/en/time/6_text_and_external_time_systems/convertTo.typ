#import "../nelson_help.typ": *

= convertTo <time:6_text_and_external_time_systems.convertTo>

Convert datetime values to selected numeric representations.

== Syntax

- #raw("x = convertTo(t, 'datenum')");
- #raw("x = convertTo(t, 'posixtime')");
- #raw("x = convertTo(t, 'juliandate')");
- #raw("x = convertTo(t, 'exceltime')");
- #raw("x = convertTo(t, 'yyyymmdd')");

== Input argument

/ inputs: A datetime array and a conversion kind.

== Output argument

/ output: A numeric array matching the requested representation.

== Description

Convert datetime values to selected numeric representations.

 convertTo centralizes the datetime conversions also available through datenum, posixtime, juliandate, exceltime, and yyyymmdd.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
t = datetime(2024, 5, 17)
convertTo(t, 'yyyymmdd')

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
