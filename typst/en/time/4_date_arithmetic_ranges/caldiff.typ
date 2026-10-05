#import "../nelson_help.typ": *

= caldiff <time:4_date_arithmetic_ranges.caldiff>

Return calendar differences between adjacent datetime values.

== Syntax

- #raw("c = caldiff(t)");
- #raw("c = caldiff(t, components)");
- #raw("c = caldiff(t, components, dim)");

== Input argument

/ inputs: A datetime array, optional component selector, and optional dimension.

== Output argument

/ output: A calendarDuration array with one fewer element along the selected dimension.

== Description

Return calendar differences between adjacent datetime values.

 caldiff computes pairwise adjacent differences by delegating each interval to between.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
t = [datetime(2024,1,1), datetime(2024,2,1), datetime(2024,4,1)]
c = caldiff(t, 'months')
split(c, 'months')

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
