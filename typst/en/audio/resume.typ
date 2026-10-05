#import "nelson_help.typ": *

= resume <audio:resume>

Resumes an audioplayer object.

== Syntax

- #raw("resume(playObj)");

== Input argument

/ playObj: an audioplayer object.

== Description

#strong[resume]; resumes an audioplayer object.


== Example

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
pause(playObj)
stop(playObj)
resume(playObj)
playObj
``````


== See also

#nlink(<audio:audioplayer_pause>)[audioplayer\_pause];, #nlink(<audio:play>)[play];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
