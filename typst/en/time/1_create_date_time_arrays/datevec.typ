#import "../nelson_help.typ": *

= datevec <time:1_create_date_time_arrays.datevec>

Convert a serial date number into a date vector.

== Syntax

- #raw("[Y, M, D, H, MN, S] = datevec(dv)");
- #raw("V = datevec(dv)");

== Input argument

/ dv: a scalar, vector, multidimensional array, or sparse double matrix: a serial date number.

== Output argument

/ Y, M, D, H, MN, S: double: Year, Month, Day, Hour, Minutes, Seconds.
/ V: a vector of double: \[Year, Month, Day, Hour, Minutes, Seconds\].

== Description

#strong[datevec]; converts a serial date number into a date vector.

 For sparse input, #strong[datevec]; converts the stored nonzero values and returns dense outputs.

 To measure performance, it is better to use tic and toc functions.


== Example

``````matlab
datevec(now())
datevec(720840)
V = datevec([720840, now()])
[Y, M, D, H, MN, S] = datevec([720840, now()])
V = datevec(sparse([720840, now()]))

``````


== See also

#nlink(<time:7_timers.tic>)[tic];, #nlink(<time:7_timers.toc>)[toc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [sparse double input supported natively],
)

// Author: Allan CORNET
