#import "../nelson_help.typ": *

= etime <time:4_date_arithmetic_ranges.etime>

Time elapsed between date vectors.

== Syntax

- #raw("e = etime(t2, t1)");

== Input argument

/ t2: Date vectors: 1-by-6 vector or m-by-6 matrix.
/ t1: Date vectors: 1-by-6 vector or m-by-6 matrix.

== Output argument

/ e: a scalar or a vector: time elapsed (seconds).

== Description

#strong[e \= etime(t2, t1)]; returns the number of seconds between two date vectors or matrices of date vectors,#strong[t1]; and #strong[t2];.


== Example

``````matlab
t1 = clock()
sleep(6)
t2 = clock()
etime(t2, t1)
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
