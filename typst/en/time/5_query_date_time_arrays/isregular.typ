#import "../nelson_help.typ": *

= isregular <time:5_query_date_time_arrays.isregular>

Test whether datetime values are regularly spaced.

== Syntax

- #raw("tf = isregular(t)");
- #raw("tf = isregular(t, unit)");

== Input argument

/ inputs: A datetime array and optional unit selector such as years, quarters, months, weeks, or days.

== Output argument

/ output: A logical scalar.

== Description

Test whether datetime values are regularly spaced.

 Without a unit, regularity is tested on serial date differences. With a calendar unit, the function compares unit indices.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
isregular(datetime(2024,1,1):days(1):datetime(2024,1,3))
isregular([datetime(2024,1,1), datetime(2024,2,1), datetime(2024,3,1)], 'months')

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
