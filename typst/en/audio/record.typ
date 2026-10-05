#import "nelson_help.typ": *

= record <audio:record>

Record audio to audiorecorder object.

== Syntax

- #raw("record(recorderObj)");
- #raw("record(recorderObj, length)");

== Input argument

/ recorderObj: audiorecorder object: audio recorder object created by #strong[audiorecorder];.
/ length: double: duration of recording in seconds.

== Description

#strong[record(recorderObj)]; starts recording audio from an input device using the specified #strong[audiorecorder]; object.

 #strong[record(recorderObj, length)]; records audio for the specified number of seconds.

 The #strong[audiorecorder]; object defines the sample rate, bit depth, and other properties of the recording.


== Example

Record 5 seconds of your speech with a microphone

``````matlab

myVoice = audiorecorder;
myVoice.StartFcn = 'disp(''Start speaking.'')';
myVoice.StopFcn = 'disp(''End of recording.'')';
record(myVoice, 5);
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
