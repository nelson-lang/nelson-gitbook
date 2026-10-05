#import "../nelson_help.typ": *

= tic <time:7_timers.tic>

Starts a stopwatch timer.

== Syntax

- #raw("tic()");
- #raw("t = tic()");

== Output argument

/ t: a unsigned integer 64 bit: value of internal timer of the tic function.

== Description

The sequence of commands#strong[tic(); commands ; t \= toc()]; returns the number of seconds required for the commands.

 Consecutive #strong[tic]; commands overwrite the tic timer.


== Example

``````matlab
tic()
sleep(10)
toc()

tic()
sleep(10)
t = toc()

``````


== See also

#nlink(<time:7_timers.toc>)[toc];, #nlink(<time:7_timers.sleep>)[sleep];, #nlink(<time:7_timers.time>)[time];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
