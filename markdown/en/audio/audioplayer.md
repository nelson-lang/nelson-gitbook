# audioplayer

Audio player object.

## 📝 Syntax

- playerObj = audioplayer(y, fs)
- playerObj = audioplayer(y, fs, nbits)
- playerObj = audioplayer(y, fs, nbits, id)

## 📥 Input argument

- y - a vector or matrix array: int8,uint8, int16, single or double.
- fs - a double value: sampling rate in Hz.
- nbits - a double value: bits per sample (16 by default).
- id - a double value: device identifier (-1 by default).

## 📤 Output argument

- playerObj - audioplayer object

## 📄 Description

<b>audioplayer</b> returns an audioplayer object to play data on an output device.

audioplayer object uses global scope and need to be deleted by user.

<b>audioplayer</b> can play multichannels data if your sound card supports it.

<b>Properties of audioplayer</b>:

| Property      | Type / Values                       | Description                                                                                    |
| ------------- | ----------------------------------- | ---------------------------------------------------------------------------------------------- |
| SampleRate    | positive scalar                     | Sample rate in Hz. Set via Fs when creating the object; adjustable afterward.                  |
| BitsPerSample | Read-only: 8, 16, 24                | Bits per sample, determined by the nBits argument.                                             |
| NumChannels   | Read-only: 1, 2                     | Mono (1) or stereo (2) channel count reported by the player.                                   |
| DeviceID      | Read-only: integer                  | Audio device identifier supplied via the ID argument.                                          |
| CurrentSample | Read-only: positive integer         | Sample currently playing; when idle, the next sample that play/resume will use.                |
| TotalSamples  | Read-only: nonnegative integer      | Total number of samples in the audio data.                                                     |
| Running       | Read-only: 'off' or 'on'            | Status of the audio player.                                                                    |
| StartFcn      | character vector or function handle | Callback executed at playback start; first arguments are the audioplayer and an event struct.  |
| StopFcn       | character vector or function handle | Callback executed when playback ends; first arguments are the audioplayer and an event struct. |
| TimerFcn      | character vector or function handle | Callback executed periodically during playback; interval controlled by TimerPeriod.            |
| TimerPeriod   | 0.05 (default) or positive scalar   | Seconds between TimerFcn callbacks.                                                            |
| Tag           | string scalar or character vector   | Label for the audioplayer object.                                                              |
| UserData      | [] (default) or any data type       | Arbitrary user-defined data stored with the object.                                            |
| Type          | Read-only: 'audioplayer'            | Class name identifier for the object.                                                          |

## 💡 Examples

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
delete(playObj)
playObj
```

Callback example

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16);
playObj.StartFcn = @(src, event) disp('Playback started');
playObj.StopFcn = @(src, event) disp('Playback stopped');
playObj
play(playObj)

```

## 🔗 See also

[delete](../handle/delete.md), [play](../audio/play.md), [stop](../audio/stop.md), [resume](../audio/resume.md), [pause](../audio/pause.md).

## 🕔 History

| Version | 📄 Description                             |
| ------- | ------------------------------------------ |
| 1.0.0   | initial version                            |
| 1.16.0  | Callback StartFcn, StopFcn, TimerFcn added |

<!--
## 👤 Author

Allan CORNET
-->
