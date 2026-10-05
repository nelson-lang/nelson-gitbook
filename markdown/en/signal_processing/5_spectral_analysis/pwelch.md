# pwelch

Welch power spectral density estimate.

## 📝 Syntax

- [Pxx, F] = pwelch(X)
- [Pxx, F] = pwelch(X, window, noverlap, NFFT, Fs)
- [Pxx, F] = pwelch(..., FREQRANGE)
- [Pxx, F] = pwelch(..., SPECTRUMTYPE)

## 📥 Input argument

- X - input signal.
- window - window vector or length.
- noverlap - number of overlapping samples.
- NFFT - FFT length.
- Fs - sample rate.
- FREQRANGE - <code>'onesided'</code>, <code>'twosided'</code>, <code>'centered'</code>, <code>'half'</code>, or <code>'whole'</code>.
- SPECTRUMTYPE - <code>'psd'</code> or <code>'power'</code>.

## 📤 Output argument

- Pxx - averaged spectral estimate.
- F - frequency vector.

## 📄 Description


<b>pwelch</b> estimates a spectrum by averaging periodograms of overlapped segments.

## 💡 Example



```matlab

[pxx, f] = pwelch(rand(256, 1), hamming(64), 32, 128, 1, 'centered');

```


## 🔗 See also

[periodogram](../../signal_processing/5_spectral_analysis/periodogram.md), [cpsd](../../signal_processing/3_transforms_correlation_modeling/cpsd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
