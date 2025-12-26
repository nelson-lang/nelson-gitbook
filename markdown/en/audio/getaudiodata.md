# getaudiodata

Store recorded audio signal in numeric array.

## 📝 Syntax

- y = getaudiodata(recorder)
- y = getaudiodata(recorder, dataType)

## 📥 Input argument

- recorder - audiorecorder object: audio recorder object created by <b>audiorecorder</b>.
- dataType - string or character vector: data type of output audio signal. Valid values: 'double' (default), 'single', 'int16', 'int8', 'uint8'.

## 📤 Output argument

- y - numeric array: audio signal data. Number of columns depends on channel count.

## 📄 Description

<b>getaudiodata</b> returns recorded audio data from an <b>audiorecorder</b> object as a numeric array.

<b>y = getaudiodata(recorder)</b> returns the audio data as a double array.

<b>y = getaudiodata(recorder, dataType)</b> returns the audio data converted to the specified data type.

The number of columns in <b>y</b> matches the number of channels in the recording (1 for mono, 2 for stereo).

The value range of <b>y</b> depends on <b>dataType</b>:

| Data Type        | Sample Value Range |
| ---------------- | ------------------ |
| int8             | -128 to 127        |
| uint8            | 0 to 255           |
| int16            | -32,768 to 32,767  |
| single or double | -1 to 1            |

## 💡 Examples

Get Data from Audio Recorder Object

```matlab

recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
doubleArray = getaudiodata(recObj);
plot(doubleArray);
title('Audio Signal (double)');

```

Get audio as int8 array

```matlab

recObj = audiorecorder;
recordblocking(recObj, 2);
int8Array = getaudiodata(recObj, 'int8');
plot(int8Array);
title('Audio Signal (int8)');

```

## 🔗 See also

[audiorecorder](../audio/audiorecorder.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
