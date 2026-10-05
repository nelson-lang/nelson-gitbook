#import "../nelson_help.typ": *

= yyyymmdd <time:6_text_and_external_time_systems.yyyymmdd>

Convert date values to numeric yyyymmdd calendar dates.

== Syntax

- #raw("n = yyyymmdd(t)");

== Input argument

/ inputs: datetime values, serial date numbers, or date-compatible input.

== Output argument

/ output: A double array where each date is encoded as year\*10000 + month\*100 + day.

== Description

Convert date values to numeric yyyymmdd calendar dates.

 yyyymmdd is useful for compact sortable date keys when time-of-day information is not needed.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
yyyymmdd(datetime(2024, 5, 17))

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
