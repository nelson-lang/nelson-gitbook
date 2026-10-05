# bandpower

Estimate signal power in a frequency band.

## 📝 Syntax

- P = bandpower(X)
- P = bandpower(X, Fs, freqRange)
- P = bandpower(Pxx, F, 'psd')
- P = bandpower(Pxx, F, freqRange, 'psd')

## 📥 Input argument

- X - input time-domain signal.
- Fs - sample rate.
- freqRange - two-element frequency range.
- Pxx, F - power spectral density estimate and matching frequency vector.

## 📤 Output argument

- P - estimated average power.

## 📄 Description


<b>bandpower</b> computes average time-domain power, or integrates a PSD estimate with a rectangle approximation. For time-domain band measurements, a Hamming-window periodogram with the input length is used.

## 💡 Example



```matlab

p = bandpower(sin((0:127)' * 0.1), 10, [0 5]);

```


## 🔗 See also

[periodogram](../../signal_processing/5_spectral_analysis/periodogram.md), [meanfreq](../../signal_processing/2_measurements_feature_extraction/meanfreq.md), [medfreq](../../signal_processing/2_measurements_feature_extraction/medfreq.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
