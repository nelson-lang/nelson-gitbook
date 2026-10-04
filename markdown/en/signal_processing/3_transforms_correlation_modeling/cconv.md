# cconv

Circular convolution.

## 📝 Syntax

- Y = cconv(A, B)
- Y = cconv(A, B, N)

## 📥 Input argument

- A, B - input vectors.
- N - positive integer convolution length.

## 📤 Output argument

- Y - circular convolution result.

## 📄 Description

<b>cconv</b> computes circular convolution using FFTs.

## 💡 Example

```matlab

y = cconv([1 2], [1 1], 2);

```

## 🔗 See also

[conv](../../data_analysis/conv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
