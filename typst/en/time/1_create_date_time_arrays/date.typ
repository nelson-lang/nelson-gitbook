#import "../nelson_help.typ": *

= date <time:1_create_date_time_arrays.date>

Return the Current date as character vector.

== Syntax

- #raw("d = date()");

== Output argument

/ d: a string: date string using format dd-MMM-yyy. MMM: English abbreviation for the month name.

== Description

#strong[d \= date()]; returns the current date as a character vector in the format#strong[dd-MMM-yyyy];.


== Example

``````matlab
d = date()
fix(c)
``````


== See also

#nlink(<time:1_create_date_time_arrays.now>)[now];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
