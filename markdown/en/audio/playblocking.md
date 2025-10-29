# playblocking

Plays an audioplayer object with blocking.

## 📝 Syntax

- playblocking(playObj)
- playblocking(playObj, start)
- playblocking(playObj, [start end])

## 📥 Input argument

- playObj - an audioplayer object.
- start - an integer value: first sample to play.
- end - an integer value: last sample to play.

## 📄 Description

<b>playblocking</b> plays an audioplayer object until playback is finished.

## 💡 Example

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playblocking(playObj)
delete(playObj)
playObj
```

## 🔗 See also

[audioplayer](../audio/audioplayer.md), [play](../audio/play.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
