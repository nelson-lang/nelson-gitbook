# square

Square waveform.

## 📝 Syntax

- Y = square(T)
- Y = square(T, duty)

## 📥 Input argument

- T - time values in radians.
- duty - duty cycle percentage.

## 📤 Output argument

- Y - waveform values.

## 📄 Description

<b>square</b> generates a two-level periodic waveform.

## 💡 Example

```matlab

y = square(0:0.1:2*pi, 25);

```

## 🔗 See also

[sawtooth](../../signal_processing/sawtooth.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
