# cpsd

Cross power spectral density estimate.

## 📝 Syntax

- [Pxy, F] = cpsd(X, Y)
- [Pxy, F] = cpsd(X, Y, window, noverlap, nfft, fs)
- [Pxy, F] = cpsd(..., FREQRANGE)

## 📥 Input argument

- X, Y - input signals.
- window - analysis window.
- noverlap - number of overlapped samples.
- nfft - FFT length.
- fs - sample rate.
- FREQRANGE - <code>'onesided'</code>, <code>'twosided'</code>, <code>'centered'</code>, <code>'half'</code>, or <code>'whole'</code>.

## 📤 Output argument

- Pxy - cross spectral density estimate.
- F - frequency vector.

## 📄 Description

<b>cpsd</b> estimates cross spectral density between two signals by averaging overlapped segments.

## 💡 Example

```matlab

[pxy, f] = cpsd(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'twosided');

```

## 🔗 See also

[pwelch](../../signal_processing/pwelch.md), [mscohere](../../signal_processing/mscohere.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
