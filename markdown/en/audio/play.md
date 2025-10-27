# play

Plays an audioplayer object.

## 📝 Syntax

- play(playObj)
- play(playObj, start)
- play(playObj, [start end])

## 📥 Input argument

- playObj - an audioplayer object.
- start - an integer value: first sample to play.
- end - an integer value: last sample to play.

## 📄 Description

<b>play</b> plays an audioplayer object.

## 💡 Example

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
delete(playObj)
playObj
```

## 🔗 See also

[audioplayer](../audio/audioplayer.md), [playblocking](../audio/playblocking.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
