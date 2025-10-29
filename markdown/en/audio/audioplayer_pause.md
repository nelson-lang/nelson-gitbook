# audioplayer_pause

Pause an audioplayer object.

## 📝 Syntax

- pause(playObj)

## 📥 Input argument

- playObj - an audioplayer object.

## 📄 Description

<b>pause</b> pauses an audioplayer object.

## 💡 Example

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
pause(playObj)
delete(playObj)
playObj
```

## 🔗 See also

[audioplayer](../audio/audioplayer.md), [stop](../audio/stop.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
