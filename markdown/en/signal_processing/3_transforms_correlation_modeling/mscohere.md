# mscohere

Magnitude-squared coherence estimate.

## 📝 Syntax

- [Cxy, F] = mscohere(X, Y)
- [Cxy, F] = mscohere(X, Y, window, noverlap, nfft, fs)
- [Cxy, F] = mscohere(..., FREQRANGE)

## 📥 Input argument

- X, Y - input signals.
- window - analysis window.
- noverlap - number of overlapped samples.
- nfft - FFT length.
- fs - sample rate.
- FREQRANGE - <code>'onesided'</code>, <code>'twosided'</code>, <code>'centered'</code>, <code>'half'</code>, or <code>'whole'</code>.

## 📤 Output argument

- Cxy - coherence estimate.
- F - frequency vector.

## 📄 Description

<b>mscohere</b> estimates normalized linear correlation in the frequency domain.

## 💡 Example

```matlab

[cxy, f] = mscohere(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'centered');

```

## 🔗 See also

[cpsd](../../signal_processing/cpsd.md), [tfestimate](../../signal_processing/tfestimate.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
