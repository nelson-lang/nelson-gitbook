#import "nelson_help.typ": *

= playblocking <audio:playblocking>

Plays an audioplayer object with blocking.

== Syntax

- #raw("playblocking(playObj)");
- #raw("playblocking(playObj, start)");
- #raw("playblocking(playObj, [start end])");

== Input argument

/ playObj: an audioplayer object.
/ start: an integer value: first sample to play.
/ end: an integer value: last sample to play.

== Description

#strong[playblocking]; plays an audioplayer object until playback is finished.
== Example

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playblocking(playObj)
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
