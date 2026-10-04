# periodogram

Power spectral density estimate using a periodogram.

## 📝 Syntax

- [Pxx, F] = periodogram(X)
- [Pxx, F] = periodogram(X, WINDOW, NFFT, Fs)
- [Pxx, F] = periodogram(..., FREQRANGE)
- [Pxx, F] = periodogram(..., SPECTRUMTYPE)

## 📥 Input argument

- X - input signal.
- WINDOW - window vector or length.
- NFFT - FFT length.
- Fs - sample rate.
- FREQRANGE - "onesided", "twosided", "centered", "half", or "whole". "half" is treated as "onesided" and "whole" as "twosided".
- SPECTRUMTYPE - "psd" or "power".

## 📤 Output argument

- Pxx - power spectral density or power spectrum estimate.
- F - frequency vector.

## 📄 Description

<b>periodogram</b> estimates signal power distribution over frequency.

## 💡 Example

```matlab

[pxx, f] = periodogram(sin((0:127)' * 0.1), [], 128, 10);

```

## 🔗 See also

[pwelch](../../signal_processing/pwelch.md), [spectrogram](../../signal_processing/spectrogram.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
