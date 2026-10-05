#import "../nelson_help.typ": *

= x2mdate <time:6_text_and_external_time_systems.x2mdate>

Convert spreadsheet serial date numbers to Nelson serial dates or datetime values.

== Syntax

- #raw("m = x2mdate(x)");
- #raw("t = x2mdate(x, 'datetime')");

== Input argument

/ inputs: Spreadsheet serial date numbers and optional output type datetime.

== Output argument

/ output: Nelson serial date numbers by default, or a datetime array when requested.

== Description

Convert spreadsheet serial date numbers to Nelson serial dates or datetime values.

 x2mdate adds the spreadsheet origin date 1899-12-30. Pass datetime as the second argument to construct datetime output directly.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
x2mdate(2)
x2mdate(2, 'datetime')

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
