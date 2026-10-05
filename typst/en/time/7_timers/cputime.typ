#import "../nelson_help.typ": *

= cputime <time:7_timers.cputime>

Return the CPU time used by your Nelon session.

== Syntax

- #raw("t = cputime()");

== Output argument

/ t: a double: time in seconds.

== Description

#strong[cputime()]; returns the CPU time used by Nelson session.

 To measure performance, it is better to use tic and toc functions.


== Example

``````matlab
t1 = cputime;
sleep(10);
t2 = cputime;
t2 - t1

% versus tic toc
tic()
sleep(10);
toc()
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
