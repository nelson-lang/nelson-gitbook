# resample

Change sample rate by a rational factor.

## 📝 Syntax

- Y = resample(X, P, Q)
- Y = resample(X, P, Q, N)
- Y = resample(X, P, Q, N, Beta)
- Y = resample(X, P, Q, B)
- Y = resample(..., 'Dimension', Dim)

## 📥 Input argument

- X - input signal or array.
- P - upsampling factor.
- Q - downsampling factor.
- N - filter half-length factor. Default is 10.
- Beta - Kaiser window shape parameter. Default is 5.
- B - FIR antialiasing filter coefficients.
- Dim - dimension to operate along.

## 📤 Output argument

- Y - resampled signal.

## 📄 Description


<b>resample</b> changes a signal sample rate by filtering between upsampling and downsampling stages.

## 💡 Example



```matlab

y = resample(1:10, 3, 2);

```


## 🔗 See also

[upfirdn](../../signal_processing/1_signal_generation_preprocessing/upfirdn.md), [decimate](../../signal_processing/1_signal_generation_preprocessing/decimate.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
