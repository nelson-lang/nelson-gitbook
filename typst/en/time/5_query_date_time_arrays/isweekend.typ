#import "../nelson_help.typ": *

= isweekend <time:5_query_date_time_arrays.isweekend>

Test whether date values fall on Saturday or Sunday.

== Syntax

- #raw("tf = isweekend(t)");

== Input argument

/ inputs: datetime values, serial date numbers, or date-compatible input.

== Output argument

/ output: A logical array.

== Description

Test whether date values fall on Saturday or Sunday.

 isweekend uses weekday numbering where Sunday and Saturday are weekend days.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
isweekend(datetime(2024, 6, 8))
isweekend(datetime(2024, 6, 10))

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
