#import "nelson_help.typ": *

= invoke <handle:invoke>

Invoke method on an handle object.

== Syntax

- #raw("R = invoke(h)");
- #raw("R = invoke(h, 'methodname')");
- #raw("R = invoke(h, 'methodname', arg1, arg2, ... , argN)");

== Input argument

/ h: an handle object.

== Output argument

/ R: The data type of the return value depends on the invoked method.

== Description

#strong[invoke(h)]; returns a struct with a list of all callable methods.

 #strong[R \= invoke(h, 'methodname')]; calls the method specified by methodname, and returns an output value.


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
