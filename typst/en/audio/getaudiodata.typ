#import "nelson_help.typ": *

= getaudiodata <audio:getaudiodata>

Store recorded audio signal in numeric array.

== Syntax

- #raw("y = getaudiodata(recorder)");
- #raw("y = getaudiodata(recorder, dataType)");

== Input argument

/ recorder: audiorecorder object: audio recorder object created by #strong[audiorecorder];.
/ dataType: string or character vector: data type of output audio signal. Valid values: 'double' (default), 'single', 'int16', 'int8', 'uint8'.

== Output argument

/ y: numeric array: audio signal data. Number of columns depends on channel count.

== Description

#strong[getaudiodata]; returns recorded audio data from an #strong[audiorecorder]; object as a numeric array.

 #strong[y \= getaudiodata(recorder)]; returns the audio data as a double array.

 #strong[y \= getaudiodata(recorder, dataType)]; returns the audio data converted to the specified data type.

 The number of columns in #strong[y]; matches the number of channels in the recording (1 for mono, 2 for stereo).

 The value range of #strong[y]; depends on #strong[dataType];:

 

#table(
  columns: 2,
  [Data Type], [Sample Value Range], 
  [int8], [-128 to 127], 
  [uint8], [0 to 255], 
  [int16], [-32,768 to 32,767], 
  [single or double], [-1 to 1], 
)

== Examples

Get Data from Audio Recorder Object

``````matlab

recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
doubleArray = getaudiodata(recObj);
plot(doubleArray);
title('Audio Signal (double)');
      
``````

Get audio as int8 array

``````matlab

recObj = audiorecorder;
recordblocking(recObj, 2);
int8Array = getaudiodata(recObj, 'int8');
plot(int8Array);
title('Audio Signal (int8)');
      
``````


== See also

#nlink(<audio:audiorecorder>)[audiorecorder];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
