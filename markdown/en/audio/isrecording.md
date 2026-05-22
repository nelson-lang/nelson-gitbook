# isrecording

Determine if recording is in progress.

## 📝 Syntax

- isrecording(recorder)

## 📥 Input argument

- recorder - audiorecorder object: audio recorder object created by <b>audiorecorder</b>.

## 📤 Output argument

- tf - logical: 1 if recording is in progress, 0 otherwise.

## 📄 Description

<b>isrecording(recorder)</b> determines if recording is in progress for the specified <b>audiorecorder</b> object.

## 💡 Example

Control Audio Recording and Playback

```matlab

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

```

## 🔗 See also

[audiorecorder](../audio/audiorecorder.md), [audioplayer](../audio/audioplayer.md), [play](../audio/play.md), [pause](../audio/audiorecorder_pause.md), [resume](../audio/resume.md), [stop](../audio/stop.md), [isrecording](../audio/isrecording.md), [isplaying](../audio/isplaying.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
