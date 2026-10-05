#import "../nelson_help.typ": *

= eomdate <time:1_create_date_time_arrays.eomdate>

Return the serial date number of the last day in a month.

== Syntax

- #raw("d = eomdate(y, m)");

== Input argument

/ inputs: Year and month numbers. Arrays are supported when the sizes are compatible with datenum and eomday.

== Output argument

/ output: A serial date number for the end of each requested month.

== Description

Return the serial date number of the last day in a month.

 eomdate combines eomday with datenum, returning dates rather than day numbers.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
eomdate(2024, 2)
datestr(eomdate(2024, 2))

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
