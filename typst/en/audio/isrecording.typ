#import "nelson_help.typ": *

= isrecording <audio:isrecording>

Determine if recording is in progress.

== Syntax

- #raw("isrecording(recorder)");

== Input argument

/ recorder: audiorecorder object: audio recorder object created by #strong[audiorecorder];.

== Output argument

/ tf: logical: 1 if recording is in progress, 0 otherwise.

== Description

#strong[isrecording(recorder)]; determines if recording is in progress for the specified #strong[audiorecorder]; object.


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
pause(2);
stop(recObj)
playerObj = getplayer(recObj);
play(playerObj)
isplaying(playerObj)
      
``````


== See also

#nlink(<audio:audiorecorder>)[audiorecorder];, #nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:play>)[play];, #nlink(<audio:audiorecorder_pause>)[pause];, #nlink(<audio:resume>)[resume];, #nlink(<audio:stop>)[stop];, #nlink(<audio:isrecording>)[isrecording];, #nlink(<audio:isplaying>)[isplaying];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
