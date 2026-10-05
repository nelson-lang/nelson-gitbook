#import "../nelson_help.typ": *

= NaT <time:1_create_date_time_arrays.NaT>

Create not-a-time datetime values.

== Syntax

- #raw("t = NaT()");
- #raw("t = NaT(n)");
- #raw("t = NaT(m, n)");
- #raw("t = NaT(..., 'Format', fmt)");
- #raw("t = NaT(..., 'TimeZone', tz)");

== Input argument

/ inputs: Optional size arguments and optional Format and TimeZone name-value pairs.

== Output argument

/ output: A datetime array whose serial values are NaN.

== Description

Create not-a-time datetime values.

 NaT is the missing value marker for datetime arrays. isnat returns true for these elements, and display functions show them as NaT.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
t = NaT(2, 3)
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
