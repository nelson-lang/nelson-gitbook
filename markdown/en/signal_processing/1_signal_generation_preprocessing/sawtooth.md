# sawtooth

Sawtooth or triangle waveform.

## 📝 Syntax

- Y = sawtooth(T)
- Y = sawtooth(T, width)

## 📥 Input argument

- T - time values in radians.
- width - fraction of period spent rising.

## 📤 Output argument

- Y - waveform values.

## 📄 Description

<b>sawtooth</b> generates a periodic ramp between -1 and 1.

## 💡 Example

```matlab

y = sawtooth(0:0.1:2*pi);

```

## 🔗 See also

[square](../../signal_processing/square.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
