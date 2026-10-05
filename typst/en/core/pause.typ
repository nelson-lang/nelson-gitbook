#import "nelson_help.typ": *

= pause <core:pause>

Pauses script execution.

== Syntax

- #raw("state = pause()");
- #raw("pause(t)");
- #raw("pause(newState)");
- #raw("previousState = pause(newState)");
- #raw("currentState = pause('query')");

== Input argument

/ t: t: double value. time (seconds) before to continue.
/ newState: a string: 'on' (enable pause) or 'off' (disable pause setting)

== Output argument

/ previousState, currentState: a string: 'on' or 'off'

== Description

#strong[pause(t)]; suspends execution for t seconds.

 #strong[pause]; without input argument wait until return key is pressed.


== Example

an example

``````matlab
state = pause
echo('press return to continue.')
pause
pause('off')
pause
pause('on')
pause(5)
``````


== See also

#nlink(<time:7_timers.sleep>)[sleep];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
