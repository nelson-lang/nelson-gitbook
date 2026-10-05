# medfilt1

One-dimensional median filter.

## 📝 Syntax

- Y = medfilt1(X)
- Y = medfilt1(X, N)
- Y = medfilt1(X, N, [], DIM)
- Y = medfilt1(..., NANFLAG, PADDING)

## 📥 Input argument

- X - input signal.
- N - window length.
- DIM - dimension to filter along.
- NANFLAG - "includenan" or "omitnan".
- PADDING - "zeropad" or "truncate".

## 📤 Output argument

- Y - median filtered signal.

## 📄 Description


<b>medfilt1</b> replaces each sample by a median over a local window.

## 💡 Example



```matlab

y = medfilt1([1 9 2 3 4], 3);

```


## 🔗 See also

[hampel](../../signal_processing/1_signal_generation_preprocessing/hampel.md), [sgolayfilt](../../signal_processing/1_signal_generation_preprocessing/sgolayfilt.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
