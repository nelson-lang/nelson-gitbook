# upfirdn

Upsample, FIR filter, and downsample.

## 📝 Syntax

- Y = upfirdn(X, H)
- Y = upfirdn(X, H, P, Q)
- Y = upfirdn(X, H, P, Q, dim)

## 📥 Input argument

- X - nonempty nonsparse input signal.
- H - nonempty nonsparse FIR coefficients. A matrix applies one filter column per signal column.
- P - upsampling factor.
- Q - downsampling factor.
- dim - dimension to process.

## 📤 Output argument

- Y - multirate filtered output.

## 📄 Description

<b>upfirdn</b> is the basic polyphase-style multirate operation used by resampling functions.

When <b>H</b> is a matrix, each column of <b>H</b> filters the corresponding signal column.

## 💡 Examples

```matlab

Y = upfirdn([1 2 3], [1 1], 2, 2);

```

```matlab

Y = upfirdn([1; 2], [1 2; 3 4]);

```

## 🔗 See also

[upsample](../../signal_processing/upsample.md), [downsample](../../signal_processing/downsample.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
