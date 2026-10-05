#import "../nelson_help.typ": *

= isnat <time:5_query_date_time_arrays.isnat>

Test datetime values for not-a-time elements.

== Syntax

- #raw("tf = isnat(t)");

== Input argument

/ inputs: A datetime array.

== Output argument

/ output: A logical array with true where datetime serial values are NaN.

== Description

Test datetime values for not-a-time elements.

 isnat rejects non-datetime input. It is the datetime-specific missing-value test and preserves the shape of the datetime data.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
t = [datetime(2024,1,1), NaT]
isnat(t)

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
