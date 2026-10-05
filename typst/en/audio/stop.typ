#import "nelson_help.typ": *

= stop <audio:stop>

Stops an audioplayer object.

== Syntax

- #raw("stop(playObj)");

== Input argument

/ playObj: an audioplayer object.

== Description

#strong[stop]; stops an audioplayer object.


== Example

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
stop(playObj)
delete(playObj)
playObj
``````


== See also

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:play>)[play];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
