#import "../nelson_help.typ": *

= isdatetime <time:5_query_date_time_arrays.isdatetime>

Test whether an input is a datetime array.

== Syntax

- #raw("tf = isdatetime(A)");

== Input argument

/ inputs: Any Nelson value.

== Output argument

/ output: A logical scalar.

== Description

Test whether an input is a datetime array.

 Use isdatetime to branch on datetime support before calling datetime-specific functions such as datenum, dateshift, tzoffset, or isnat.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
isdatetime(datetime(2024,1,1))
isdatetime(seconds(1))

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
