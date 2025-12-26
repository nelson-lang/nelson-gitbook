# recordblocking

Record audio to audiorecorder object; hold control until recording completes.

## 📝 Syntax

- recordblocking(recorderObj, length)

## 📥 Input argument

- recorderObj - audiorecorder object: audio recorder object created by <b>audiorecorder</b>.
- length - double: duration of recording in seconds.

## 📄 Description

<b>recordblocking(recorderObj, length)</b> records audio from an input device for the specified number of seconds. This method does not return control until recording completes.

The <b>audiorecorder</b> object defines the sample rate, bit depth, and other properties of the recording.

## 💡 Example

Record 5 seconds of your speech with a microphone, and play it back

```matlab

myVoice = audiorecorder;
disp('Start speaking.');
recordblocking(myVoice, 5);
disp('End of recording. Playing back ...');
play(myVoice);

```

## 🔗 See also

[audiorecorder](../audio/audiorecorder.md), [play](../audio/play.md), [recordblocking](../audio/recordblocking.md), [pause](../audio/pause.md), [resume](../audio/resume.md), [stop](../audio/stop.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
