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

[delete](../handle/delete.md), [play](../audio/play.md), [stop](../audio/stop.md), [resume](../audio/resume.md), [pause](../audio/pause.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
