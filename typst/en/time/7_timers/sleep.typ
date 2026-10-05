#import "../nelson_help.typ": *

= sleep <time:7_timers.sleep>

Suspend code execution.

== Syntax

- #raw("sleep(sec)");

== Input argument

/ n: a double: duration of the sleep in seconds (decimal number).

== Description

#strong[sleep]; stops Nelson processing any instruction for a specified number of seconds.

 CTRL-C interruption stops #strong[sleep];.


== Example

``````matlab
tic();sleep(1);toc()
tic();sleep(0.1);toc()
tic();sleep(0.01);toc()
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
