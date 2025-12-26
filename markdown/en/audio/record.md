# record

Record audio to audiorecorder object.

## 📝 Syntax

- record(recorderObj)
- record(recorderObj, length)

## 📥 Input argument

- recorderObj - audiorecorder object: audio recorder object created by <b>audiorecorder</b>.
- length - double: duration of recording in seconds.

## 📄 Description

<b>record(recorderObj)</b> starts recording audio from an input device using the specified <b>audiorecorder</b> object.

<b>record(recorderObj, length)</b> records audio for the specified number of seconds.

The <b>audiorecorder</b> object defines the sample rate, bit depth, and other properties of the recording.

## 💡 Example

Record 5 seconds of your speech with a microphone

```matlab

myVoice = audiorecorder;
myVoice.StartFcn = 'disp(''Start speaking.'')';
myVoice.StopFcn = 'disp(''End of recording.'')';
record(myVoice, 5);
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
