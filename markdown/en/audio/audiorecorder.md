# audiorecorder

Object for recording audio.

## 📝 Syntax

- recorder = audiorecorder()
- recorder = audiorecorder(Fs, nBits, nChannels)
- recorder = audiorecorder(Fs, nBits, nChannels, ID)

## 📥 Input argument

- Fs - a double value: sampling rate in Hz (default: 8000).
- nBits - a double value: bits per sample (default: 8; valid: 8, 16, 24).
- nChannels - a double value: number of channels (default: 1; valid: 1, 2).
- ID - a double value: audio device identifier (default: -1).

## 📤 Output argument

- recorder - audiorecorder object

## 📄 Description

<b>audiorecorder</b> creates an audiorecorder object for recording audio from an input device such as a microphone.

The audiorecorder object provides properties and methods to control audio recording, including pausing, resuming, and defining callbacks.

<b>Creation:</b>

- <b>recorder = audiorecorder()</b> creates an audiorecorder object with default properties: SampleRate = 8000, BitsPerSample = 8, NumChannels = 1.
- <b>recorder = audiorecorder(Fs, nBits, nChannels)</b> sets the sample rate, bits per sample, and number of channels.
- <b>recorder = audiorecorder(Fs, nBits, nChannels, ID)</b> sets the audio input device to the specified device identifier.

<b>Properties of audiorecorder:</b>

| Property      | Type / Values                       | Description                                                                          |
| ------------- | ----------------------------------- | ------------------------------------------------------------------------------------ |
| SampleRate    | positive scalar (Read-only)         | Sample rate in Hz.                                                                   |
| BitsPerSample | Read-only: 8, 16, 24                | Bits per sample.                                                                     |
| NumChannels   | Read-only: 1, 2                     | Number of audio channels.                                                            |
| DeviceID      | integer (Read-only)                 | Audio device identifier.                                                             |
| CurrentSample | positive integer (Read-only)        | Sample currently recording.                                                          |
| TotalSamples  | nonnegative integer (Read-only)     | Total length of audio data.                                                          |
| Running       | Read-only: 'off' (default) or 'on'  | Status of the audio recorder.                                                        |
| StartFcn      | character vector or function handle | Callback executed at recording start.                                                |
| StopFcn       | character vector or function handle | Callback executed when recording ends.                                               |
| TimerFcn      | character vector or function handle | Callback executed periodically during recording; interval controlled by TimerPeriod. |
| TimerPeriod   | 0.05 (default) or positive scalar   | Seconds between TimerFcn callbacks.                                                  |
| Tag           | string scalar or character vector   | Label for the audiorecorder object.                                                  |
| UserData      | [] (default) or any data type       | Arbitrary user-defined data stored with the object.                                  |
| Type          | 'audiorecorder' (Read-only)         | Class name identifier for the object.                                                |

<b>Object Functions:</b>

- <b>getaudiodata</b> - Store recorded audio signal in numeric array
- <b>getplayer</b> - Create associated audioplayer object
- <b>isrecording</b> - Determine if recording is in progress
- <b>pause</b> - Pause recording
- <b>play</b> - Play audio from audiorecorder object
- <b>record</b> - Record audio to audiorecorder object
- <b>recordblocking</b> - Record audio and block until complete
- <b>resume</b> - Resume recording from paused state
- <b>stop</b> - Stop recording

## 💡 Examples

Record Audio from Input Device

```matlab

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

```

Callback example

```matlab

recObj = audiorecorder(8000, 8, 1);
recObj.StartFcn = @(src, event) disp('Recording started');
recObj.StopFcn = @(src, event) disp('Recording stopped');
recordblocking(recObj, 2);

```

## 🔗 See also

[audioplayer](../audio/audioplayer.md), [getaudiodata](../audio/getaudiodata.md), [record](../audio/record.md), [recordblocking](../audio/recordblocking.md), [pause](../audio/pause.md), [resume](../audio/resume.md), [stop](../audio/stop.md), [getplayer](../audio/getplayer.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
