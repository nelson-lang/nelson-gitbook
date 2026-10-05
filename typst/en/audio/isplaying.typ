#import "nelson_help.typ": *

= isplaying <audio:isplaying>

get info about audio playback is in progress.

== Syntax

- #raw("play(playObj)");

== Input argument

/ play: an audioplayer object.

== Output argument

/ play: an logical.

== Description

#strong[isplaying]; get information about audio playback is in progress.
== Example

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
isplaying(playObj)
pause(playObj)
isplaying(playObj)
delete(playObj)
playObj
``````


== See also

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:playblocking>)[playblocking];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
