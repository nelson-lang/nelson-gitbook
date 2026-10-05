#import "nelson_help.typ": *

= echo <display_format:echo>

Controls the echoing during their execution.

== Syntax

- #raw("state = echo()");
- #raw("echo()");
- #raw("echo('on')");
- #raw("echo('off')");

== Input argument

/ 'on': enable echo mode (default)
/ 'off': disable echo mode

== Output argument

/ state: a string: 'on' or 'off'

== Description

#strong[echo('off')]; disable echo mode.

 Without input and output arguments,#strong[echo]; toggles the current echo state.


== Example

an example

``````matlab
R = echo
echo('on')
A = 1+1
echo('off')
A = A+1
echo(R)
A
``````


== See also

#nlink(<display_format:disp>)[disp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
