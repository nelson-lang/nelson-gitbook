#import "nelson_help.typ": *

= recordblocking <audio:recordblocking>

Record audio to audiorecorder object; hold control until recording completes.

== Syntax

- #raw("recordblocking(recorderObj, length)");

== Input argument

/ recorderObj: audiorecorder object: audio recorder object created by #strong[audiorecorder];.
/ length: double: duration of recording in seconds.

== Description

#strong[recordblocking(recorderObj, length)]; records audio from an input device for the specified number of seconds. This method does not return control until recording completes.

 The #strong[audiorecorder]; object defines the sample rate, bit depth, and other properties of the recording.


== Example

Record 5 seconds of your speech with a microphone, and play it back

``````matlab

myVoice = audiorecorder;
disp('Start speaking.');
recordblocking(myVoice, 5);
disp('End of recording. Playing back ...');
play(myVoice);
      
``````


== See also

#nlink(<audio:audiorecorder>)[audiorecorder];, #nlink(<audio:play>)[play];, #nlink(<audio:recordblocking>)[recordblocking];, #nlink(<audio:audiorecorder_pause>)[pause];, #nlink(<audio:resume>)[resume];, #nlink(<audio:stop>)[stop];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
