#import "../nelson_help.typ": *

= now <time:1_create_date_time_arrays.now>

Returns current date under the form of a Unix hour.

== Syntax

- #raw("n = now()");

== Output argument

/ n: a double.

== Description

#strong[now()]; returns the current date and time as a serial date number.


== Example

``````matlab
datevec(now())
``````


== See also

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];, #nlink(<time:1_create_date_time_arrays.datevec>)[datevec];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
