#import "nelson_help.typ": *

= audiorecorder\_pause <audio:audiorecorder_pause>

Pause an audiorecorder object.

== Syntax

- #raw("pause(recObj)");

== Input argument

/ recObj: an audiorecorder object.

== Description

#strong[pause]; pauses an audiorecorder object.


== Example

``````matlab
recObj = audiorecorder();
      resume(recObj);
pause(recObj)

``````


== See also

#nlink(<audio:audiorecorder>)[audiorecorder];, #nlink(<audio:stop>)[stop];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
