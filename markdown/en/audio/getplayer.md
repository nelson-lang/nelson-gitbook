# getplayer

Create associated audioplayer object.

## 📝 Syntax

- playerObject = getplayer(recorder)

## 📥 Input argument

- recorder - audiorecorder object: audio recorder object created by <b>audiorecorder</b>.

## 📤 Output argument

- playerObject - audioplayer object associated with the specified audiorecorder object.

## 📄 Description

<b>getplayer(recorder)</b> creates the <b>audioplayer</b> object associated with the specified <b>audiorecorder</b> object.

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
stop(recObj)
playerObj = getplayer(recObj);
play(playerObj)

```

## 🔗 See also

[audiorecorder](../audio/audiorecorder.md), [audioplayer](../audio/audioplayer.md), [play](../audio/play.md), [pause](../audio/audioplayer_pause.md), [resume](../audio/resume.md), [stop](../audio/stop.md), [isrecording](../audio/isrecording.md), [isplaying](../audio/isplaying.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
