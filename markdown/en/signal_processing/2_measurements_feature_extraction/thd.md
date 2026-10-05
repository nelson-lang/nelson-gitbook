# thd

Total harmonic distortion estimate.

## 📝 Syntax

- D = thd(X)
- D = thd(X, Fs)

## 📥 Input argument

- X - input signal.
- Fs - sample rate.

## 📤 Output argument

- D - distortion estimate in decibels.

## 📄 Description


<b>thd</b> estimates total harmonic distortion from FFT magnitudes.

## 💡 Example



```matlab

d = thd(sin((0:255)' * 0.1));

```


## 🔗 See also

[snr](../../signal_processing/2_measurements_feature_extraction/snr.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
