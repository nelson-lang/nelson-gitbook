#import "../nelson_help.typ": *

= leapseconds <time:5_query_date_time_arrays.leapseconds>

Return leap second data available to the time module.

== Syntax

- #raw("L = leapseconds()");

== Input argument

/ inputs: No input arguments.

== Output argument

/ output: An array containing leap second data; currently empty when no leap-second table is embedded.

== Description

Return leap second data available to the time module.

 The function is present for date and time API completeness. The current embedded timezone subset does not include leap second records.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
L = leapseconds()
size(L)

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
