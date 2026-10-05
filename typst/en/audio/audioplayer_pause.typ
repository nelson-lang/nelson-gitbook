#import "nelson_help.typ": *

= audioplayer\_pause <audio:audioplayer_pause>

Pause an audioplayer object.

== Syntax

- #raw("pause(playObj)");

== Input argument

/ playObj: an audioplayer object.

== Description

#strong[pause]; pauses an audioplayer object.


== Example

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
pause(playObj)
delete(playObj)
playObj
``````


== See also

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:stop>)[stop];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
