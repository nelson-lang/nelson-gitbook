# conv2

2-D convolution.

## 📝 Syntax

- C = conv2(A, B)
- C = conv2(u, v, A)
- C = conv2(A, B, shape)
- C = conv2(u, v, A, shape)

## 📥 Input argument

- A - vector or matrix.
- B - vector or matrix.
- u - row or column vector.
- v - row or column vector.
- shape - subsection of convolution: 'full' (default: full 2-D convolution), 'same' (central part of the convolution) or 'valid' (parts of the convolution that are computed without zero-padded edges).

## 📤 Output argument

- C - 2-D convolution, returned as a vector or matrix.

## 📄 Description

<b>conv2</b> returns the two-dimensional convolution.

## 💡 Example

```matlab
A = magic(3);
B = magic(4);
R = conv2(A, B, 'same')
```

## 🔗 See also

[conv](../data_analysis/conv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
