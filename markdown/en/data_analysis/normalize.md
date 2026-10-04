# normalize

Normalize data.

## 📝 Syntax

- N = normalize(A)
- N = normalize(A, method)
- N = normalize(A, method, methodtype)
- N = normalize(A, dim, \_\_\_)
- [N, C, S] = normalize(\_\_\_)

## 📥 Input argument

- A - numeric or logical array.
- method - 'zscore', 'norm', 'range', 'center', 'scale', or 'medianiqr'.
- methodtype - option for the chosen method (e.g. 'std' or 'robust' for 'zscore', a norm order for 'norm', a two-element interval for 'range').
- dim - dimension along which to operate.

## 📤 Output argument

- N - normalized data.
- C - centering value used.
- S - scaling value used.

## 📄 Description

<b>normalize</b> returns the vectorwise z-score of the data in A (centering by the mean and scaling by the standard deviation). A method and method type can select other normalizations. By default normalize operates along the first array dimension whose size does not equal 1.

## 💡 Example

```matlab
normalize([1 2 3 4 5])
```

## 🔗 See also

[zscore](../statistics/zscore.md), [std](../statistics/std.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
