# interp

Interpolate a vector by an integer factor.

## 📝 Syntax

- Y = interp(X, R)
- Y = interp(X, R, N)
- Y = interp(X, R, N, alpha)

## 📥 Input argument

- X - nonempty input vector. Its length must be at least 2\*N+1.
- R - positive integer interpolation factor.
- N - positive integer filter length parameter. The default value is 4.
- alpha - bandlimitedness factor in the interval (0, 1]. The default value is 0.5.

## 📤 Output argument

- Y - interpolated vector with length R times the length of X.

## 📄 Description


<b>interp</b> inserts R-1 samples between input samples and applies a least-squares interpolation FIR filter. Linear edge extrapolation is used before filtering so the returned vector has the expected phase and length.

## 💡 Example



```matlab

y = interp(1:8, 2, 2);

```


## 🔗 See also

[upsample](../../signal_processing/1_signal_generation_preprocessing/upsample.md), [resample](../../signal_processing/1_signal_generation_preprocessing/resample.md), [upfirdn](../../signal_processing/1_signal_generation_preprocessing/upfirdn.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
