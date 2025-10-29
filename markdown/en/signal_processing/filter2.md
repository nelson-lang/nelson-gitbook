# filter2

2-D digital filter.

## 📝 Syntax

- Y = filter2(H, X)
- Y = filter2(H, X, shape)

## 📥 Input argument

- H - coefficients of rational transfer function.
- X - input data.
- shape - 'same' (default), 'valid' or 'full'.

## 📤 Output argument

- Y - result: 2-D digital filter.

## 📄 Description

<b>Y = filter2(H, X)</b> applies a finite impulse response filter to a matrix of data X according to coefficients in a matrix <b>H</b>.

## 💡 Example

```matlab
A = zeros(10);
A(3:7, 3:7) = ones(5);
H = [1 2 1; 0 0 0; -1 -2 -1];
R = filter2(H, A, 'valid')
```

## 🔗 See also

[conv2](../data_analysis/conv2.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
