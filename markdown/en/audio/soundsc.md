# soundsc

Scale data and play as sound.

## 📝 Syntax

- soundsc(y)
- soundsc(y, Fs)
- soundsc(y, Fs, nBits)
- soundsc(y, Fs, nBits, yRange)

## 📥 Input argument

- y - column vector or m-by-2 matrix.
- Fs - sample rate, a positive number, 8192 by default.
- nBits - bit depth of sample values: 8, 16 (default), 24.
- yRange - range of audio data to scale: | two-element vector or [-max(abs(y)),max(abs(y))] default.

## 📄 Description

<b>soundsc</b> scales the values of audio signal <b>y </b> to fit in the range from <b>–1.0</b> to <b>1.0</b> and play as sound.

## 💡 Example

```matlab
signal = rand(2, 44100) - 0.5;
soundsc(signal, 44110, 16)

```

## 🔗 See also

[audioplayer](../audio/audioplayer.md), [playblocking](../audio/playblocking.md), [sound](../audio/sound.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
