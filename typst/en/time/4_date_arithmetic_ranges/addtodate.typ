#import "../nelson_help.typ": *

= addtodate <time:4_date_arithmetic_ranges.addtodate>

Modify date number by field.

== Syntax

- #raw("r = addtodate(d, q, f)");

== Input argument

/ d: serial datenum.
/ q: quantile to add to date
/ f: 'year', 'month', 'day', 'hour', 'minute', 'second', or 'millisecond.

== Output argument

/ r: date number.

== Description

#strong[r \= addtodate(d, q, f)]; adds quantity #strong[q]; to the indicated date field #strong[f]; of a scalar serial date number #strong[d];, returning the updated date number #strong[r];.


== Example

``````matlab
t = datenum('07-Apr-2008 23:00:00');datevec(t)
t2 = addtodate(t, -2, 'hour');datevec(t2)
t3 = addtodate(t, 4, 'hour');datevec(t3)
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
