# meanfreq

Mean frequency of a signal spectrum.

## 📝 Syntax

- Fmean = meanfreq(X)
- Fmean = meanfreq(X, Fs)
- Fmean = meanfreq(Pxx, F)
- [Fmean, P] = meanfreq(...)

## 📥 Input argument

- X - input time-domain signal.
- Fs - sample rate.
- Pxx, F - power spectral density estimate and matching frequency vector.

## 📤 Output argument

- Fmean - power-weighted mean frequency.
- P - power used for the measurement.

## 📄 Description


<b>meanfreq</b> computes the power-weighted mean frequency. Time-domain inputs use a rectangular-window periodogram with the input length.

## 💡 Example



```matlab

[f, p] = meanfreq(sin((0:127)' * 0.1), 10);

```


## 🔗 See also

[medfreq](../../signal_processing/2_measurements_feature_extraction/medfreq.md), [bandpower](../../signal_processing/2_measurements_feature_extraction/bandpower.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
