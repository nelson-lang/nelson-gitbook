#import "../nelson_help.typ": *

= clock <time:1_create_date_time_arrays.clock>

Return the current local date and time as a date vector.

== Syntax

- #raw("v = clock()");

== Output argument

/ v: a vector: \[year, month, day, hours, minutes, seconds\].

== Description

#strong[calendar()]; returns the currently monthly calendar.

 The date vector contains the following fields:

 year

 months \[1, 12\]

 days \[1, 31\]

 hours \[0, 23\]

 minutes \[0, 59\]

 seconds \[0, 61\]

 seconds: field has a fractional part after the decimal point for extended accuracy.

 To time the duration of an event, use tic and toc functions instead of clock.

 The clock function is based on the system time and thus might not be reliable for time comparison operations.


== Example

``````matlab
c = clock()
fix(c)
``````


== See also

#nlink(<time:7_timers.tic>)[tic];, #nlink(<time:7_timers.toc>)[toc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
