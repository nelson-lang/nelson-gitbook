# medfreq

Median frequency of a signal spectrum.

## 📝 Syntax

- Fmed = medfreq(X)
- Fmed = medfreq(X, Fs)
- Fmed = medfreq(Pxx, F)
- [Fmed, P] = medfreq(...)

## 📥 Input argument

- X - input time-domain signal.
- Fs - sample rate.
- Pxx, F - power spectral density estimate and matching frequency vector.

## 📤 Output argument

- Fmed - frequency dividing the spectral power into two equal parts.
- P - power used for the measurement.

## 📄 Description


<b>medfreq</b> computes the median frequency with rectangular spectral integration and linear interpolation between bin borders.

## 💡 Example



```matlab

[f, p] = medfreq(sin((0:127)' * 0.1), 10);

```


## 🔗 See also

[meanfreq](../../signal_processing/2_measurements_feature_extraction/meanfreq.md), [bandpower](../../signal_processing/2_measurements_feature_extraction/bandpower.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
