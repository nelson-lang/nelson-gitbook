#import "../nelson_help.typ": *

= time <time:7_timers.time>

Return the current time as the number of seconds or nanoseconds since the epoch.

== Syntax

- #raw("t_s = time()");
- #raw("t_s = time('s')");
- #raw("t_ns = time('ns')");

== Output argument

/ t\_s: a double: value of current time as the number of seconds since the epoch.
/ t\_ns: a unsigned integer 64 bit: value of current time as the number of nanoseconds since the epoch.

== Description

#strong[time]; returns the current time as the number of seconds or nanoseconds since the epoch.

 The epoch is referenced to 00:00:00 UTC (Coordinated Universal Time) 1 Jan 1970.


== Example

``````matlab
t1=time()
sleep(10)
t2 = time()
t2 - t1

``````


== See also

#nlink(<time:7_timers.tic>)[tic];, #nlink(<time:7_timers.sleep>)[sleep];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
