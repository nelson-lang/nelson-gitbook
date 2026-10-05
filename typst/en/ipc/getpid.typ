#import "nelson_help.typ": *

= getpid <ipc:getpid>

Get nelson(s) Process IDentificator.

== Syntax

- #raw("p = getpid()");
- #raw("v = getpid('available')");

== Input argument

/ 'available': a string.

== Output argument

/ p: a double: current Process Identifier.
/ v: a vector of double: list of nelson Processes Identification (with same arch) currently running for current user.

== Description

#strong[p \= getpid()]; returns current nelson process identifier currently running on computer.

 #strong[v \= getpid('available')]; returns list of nelson processes identifiers (with same arch) running for current user.

 win64 and win32 are two different architecture but they can run in same time.


== Example

``````matlab
p = getpid()
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
``````


== See also

#nlink(<os_functions:unix>)[unix];, #nlink(<ipc:ipc>)[ipc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
