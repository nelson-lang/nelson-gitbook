# chirp

Swept-frequency cosine signal.

## 📝 Syntax

- Y = chirp(T)
- Y = chirp(T, F0, T1, F1)
- Y = chirp(T, F0, T1, F1, method)
- Y = chirp(T, F0, T1, F1, method, phi)

## 📥 Input argument

- T - time values.
- F0 - initial frequency.
- T1 - reference time.
- F1 - frequency at T1.
- method - 'linear', 'quadratic', or 'logarithmic'.
- phi - initial phase in degrees.

## 📤 Output argument

- Y - generated signal.

## 📄 Description

<b>chirp</b> generates a cosine whose frequency changes over time.

## 💡 Example

```matlab

y = chirp(0:0.01:1, 0, 1, 10);

```

## 🔗 See also

[sawtooth](../../signal_processing/sawtooth.md), [square](../../signal_processing/square.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
