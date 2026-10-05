#import "nelson_help.typ": *

= getplayer <audio:getplayer>

Create associated audioplayer object.

== Syntax

- #raw("playerObject = getplayer(recorder)");

== Input argument

/ recorder: audiorecorder object: audio recorder object created by #strong[audiorecorder];.

== Output argument

/ playerObject: audioplayer object associated with the specified audiorecorder object.

== Description

#strong[getplayer(recorder)]; creates the #strong[audioplayer]; object associated with the specified #strong[audiorecorder]; object.


== Example

Control Audio Recording and Playback

``````matlab

recObj = audiorecorder;
record(recObj);
disp('Recording in progress now ...')
pause(recObj);
isrecording(recObj)
playerObj = getplayer(recObj);
play(playerObj);
isplaying(playerObj)
resume(recObj)
stop(recObj)
playerObj = getplayer(recObj);
play(playerObj)
      
``````


== See also

#nlink(<audio:audiorecorder>)[audiorecorder];, #nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:play>)[play];, #nlink(<audio:audioplayer_pause>)[pause];, #nlink(<audio:resume>)[resume];, #nlink(<audio:stop>)[stop];, #nlink(<audio:isrecording>)[isrecording];, #nlink(<audio:isplaying>)[isplaying];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
