#import "nelson_help.typ": *

= getnelsonmode <engine:getnelsonmode>

Returns current Nelson mode.

== Syntax

- #raw("m = getnelsonmode()");

== Output argument

/ m: a string.

== Description

#strong[getnelsonmode()]; returns current Nelson mode used.

 There are #strong[6]; modes:

 #strong[BASIC\_ENGINE];: Nelson used as engine without any graphics.

 #strong[ADVANCED\_ENGINE];: Nelson used as engine with graphics\/gui.

 #strong[BASIC\_TERMINAL];: Nelson launched as terminal without graphics.

 #strong[ADVANCED\_TERMINAL];: Nelson launched as terminal with graphics\/gui.

 #strong[GUI];: Nelson launched as a graphical application (default).

 #strong[WEB\_GUI];: Nelson launched as a web application.


== Example

``````matlab
getnelsonmode()
``````


== See also

#nlink(<engine:executable>)[executable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
