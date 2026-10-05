#import "../nelson_help.typ": *

= calendar <time:1_create_date_time_arrays.calendar>

Calendar.

== Syntax

- #raw("calendar()");
- #raw("c = calendar()");
- #raw("c = calendar(d)");
- #raw("c = calendar(y, m)");

== Input argument

/ d: an integer value: a serial date number.
/ y: an integer value: 'year' desired \[1400, 9999\].
/ m: an integer value: 'month' desired \[1, 12\].

== Output argument

/ c: a 6x7 matrix.

== Description

#strong[calendar()]; returns the currently monthly calendar.

 If no output arguments are specified,the calendar is displayed on the screen instead of returning a matrix 6x7.


== Example

``````matlab
calendar()
c = calendar(1973, 8)
c = calendar(datenum(1973, 8, 4))
``````


== See also

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
