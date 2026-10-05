#import "nelson_help.typ": *

= audiorecorder <audio:audiorecorder>

Object for recording audio.

== Syntax

- #raw("recorder = audiorecorder()");
- #raw("recorder = audiorecorder(Fs, nBits, nChannels)");
- #raw("recorder = audiorecorder(Fs, nBits, nChannels, ID)");

== Input argument

/ Fs: a double value: sampling rate in Hz (default: 8000).
/ nBits: a double value: bits per sample (default: 8; valid: 8, 16, 24).
/ nChannels: a double value: number of channels (default: 1; valid: 1, 2).
/ ID: a double value: audio device identifier (default: -1).

== Output argument

/ recorder: audiorecorder object

== Description

#strong[audiorecorder]; creates an audiorecorder object for recording audio from an input device such as a microphone.

 The audiorecorder object provides properties and methods to control audio recording, including pausing, resuming, and defining callbacks.

 #strong[Creation:];

 

- #strong[recorder \= audiorecorder()]; creates an audiorecorder object with default properties: SampleRate \= 8000, BitsPerSample \= 8, NumChannels \= 1.
- #strong[recorder \= audiorecorder(Fs, nBits, nChannels)]; sets the sample rate, bits per sample, and number of channels.
- #strong[recorder \= audiorecorder(Fs, nBits, nChannels, ID)]; sets the audio input device to the specified device identifier. #strong[Properties of audiorecorder:];

 

#table(
  columns: 3,
  [Property], [Type \/ Values], [Description], 
  [SampleRate], [positive scalar (Read-only)], [Sample rate in Hz.], 
  [BitsPerSample], [Read-only: 8, 16, 24], [Bits per sample.], 
  [NumChannels], [Read-only: 1, 2], [Number of audio channels.], 
  [DeviceID], [integer (Read-only)], [Audio device identifier.], 
  [CurrentSample], [positive integer (Read-only)], [Sample currently recording.], 
  [TotalSamples], [nonnegative integer (Read-only)], [Total length of audio data.], 
  [Running], [Read-only: 'off' (default) or 'on'], [Status of the audio recorder.], 
  [StartFcn], [character vector or function handle], [Callback executed at recording start.], 
  [StopFcn], [character vector or function handle], [Callback executed when recording ends.], 
  [TimerFcn], [character vector or function handle], [Callback executed periodically during recording; interval controlled by TimerPeriod.], 
  [TimerPeriod], [0.05 (default) or positive scalar], [Seconds between TimerFcn callbacks.], 
  [Tag], [string scalar or character vector], [Label for the audiorecorder object.], 
  [UserData], [\[\] (default) or any data type], [Arbitrary user-defined data stored with the object.], 
  [Type], ['audiorecorder' (Read-only)], [Class name identifier for the object.], 
)
 #strong[Object Functions:];

 

- #strong[getaudiodata]; - Store recorded audio signal in numeric array
- #strong[getplayer]; - Create associated audioplayer object
- #strong[isrecording]; - Determine if recording is in progress
- #strong[pause]; - Pause recording
- #strong[play]; - Play audio from audiorecorder object
- #strong[record]; - Record audio to audiorecorder object
- #strong[recordblocking]; - Record audio and block until complete
- #strong[resume]; - Resume recording from paused state
- #strong[stop]; - Stop recording
== Examples

Record Audio from Input Device

``````matlab

Fs = 44100;
nBits = 16;
nChannels = 2;
ID = -1; % default audio input device
recObj = audiorecorder(Fs, nBits, nChannels, ID);
disp("Begin speaking.")
recDuration = 5; % record for 5 seconds
recordblocking(recObj, recDuration);
disp("End of recording.")
play(recObj);
      
``````

Callback example

``````matlab

recObj = audiorecorder(8000, 8, 1);
recObj.StartFcn = @(src, event) disp('Recording started');
recObj.StopFcn = @(src, event) disp('Recording stopped');
recordblocking(recObj, 2);
      
``````


== See also

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:getaudiodata>)[getaudiodata];, #nlink(<audio:record>)[record];, #nlink(<audio:recordblocking>)[recordblocking];, #nlink(<audio:audiorecorder_pause>)[pause];, #nlink(<audio:resume>)[resume];, #nlink(<audio:stop>)[stop];, #nlink(<audio:getplayer>)[getplayer];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
