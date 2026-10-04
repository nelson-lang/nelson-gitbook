# decimate

Lowpass filter and downsample a vector.

## 📝 Syntax

- Y = decimate(X, Q)
- Y = decimate(X, Q, N)
- Y = decimate(X, Q, N, 'iir')
- Y = decimate(X, Q, N, 'fir')

## 📥 Input argument

- X - nonempty input vector.
- Q - integer decimation factor greater than one.
- N - filter order. The default order is 8 for IIR mode and 30 for FIR mode.

## 📤 Output argument

- Y - decimated vector.

## 📄 Description

<b>decimate</b> applies an anti-aliasing lowpass filter and keeps every Q-th sample. The default mode uses an IIR Chebyshev type I lowpass filter with zero-phase forward and reverse filtering. The <b>'fir'</b> mode uses a windowed FIR lowpass filter and compensates its delay before downsampling.

## 💡 Example

```matlab

y = decimate(1:20, 2, 4, 'fir');

```

## 🔗 See also

[downsample](../../signal_processing/downsample.md), [resample](../../signal_processing/resample.md), [upfirdn](../../signal_processing/upfirdn.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
