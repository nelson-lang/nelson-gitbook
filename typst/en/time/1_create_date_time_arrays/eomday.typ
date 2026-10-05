#import "../nelson_help.typ": *

= eomday <time:1_create_date_time_arrays.eomday>

Returns last day of month.

== Syntax

- #raw("E = eomday(Y, M)");

== Input argument

/ Y: year: real.
/ M: month: real.

== Output argument

/ E: last day of month: real.

== Description

#strong[E \= eomday(Y, M)]; returns the last day of the month#strong[M]; for the year #strong[Y];.


== Example

``````matlab
eomday(1900, 1:12)
``````


== See also

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];, #nlink(<time:3_date_time_components.weekday>)[weekday];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
