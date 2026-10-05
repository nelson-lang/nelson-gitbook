#import "../nelson_help.typ": *

= toc <time:7_timers.toc>

Read the stopwatch timer.

== Syntax

- #raw("toc()");
- #raw("t = toc()");
- #raw("toc(timer_value)");
- #raw("t = toc(timer_value)");

== Input argument

/ timer\_value: a unsigned integer 64 bit: value of internal timer of the tic function.

== Output argument

/ t: a double: number of seconds since last call to tic function (Precision in order of millisecond).

== Description

The sequence of commands#strong[tic(); commands ; t \= toc()]; returns the number of seconds required for the commands.

 Consecutive calls to the toc function with no input return the elapsed since the most recent tic.

 Consecutive calls to the toc function with the same timerVal input return the elapsed time since the tic function call that corresponds to that input.


== Example

``````matlab
tic()
sleep(10)
toc()
sleep(10)
toc()


``````


== See also

#nlink(<time:1_create_date_time_arrays.datenum>)[tic];, #nlink(<time:1_create_date_time_arrays.datevec>)[clock];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
