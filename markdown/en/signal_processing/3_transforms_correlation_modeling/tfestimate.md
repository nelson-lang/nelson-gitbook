# tfestimate

Transfer function estimate.

## 📝 Syntax

- [Txy, F] = tfestimate(X, Y)
- [Txy, F] = tfestimate(X, Y, window, noverlap, nfft, fs)
- [Txy, F] = tfestimate(..., FREQRANGE)

## 📥 Input argument

- X, Y - input and output signals.
- window - analysis window.
- noverlap - number of overlapped samples.
- nfft - FFT length.
- fs - sample rate.
- FREQRANGE - <code>'onesided'</code>, <code>'twosided'</code>, <code>'centered'</code>, <code>'half'</code>, or <code>'whole'</code>.

## 📤 Output argument

- Txy - transfer function estimate.
- F - frequency vector.

## 📄 Description

<b>tfestimate</b> estimates a frequency response from input and output signals.

## 💡 Example

```matlab

[txy, f] = tfestimate(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'twosided');

```

## 🔗 See also

[cpsd](../../signal_processing/cpsd.md), [mscohere](../../signal_processing/mscohere.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
