# unidstat

Discrete uniform mean and variance

## 📝 Syntax

- m = unidstat(n)
- [m, v] = unidstat(n)

## 📥 Input argument

- n - positive integer scalar or array: maximum value.

## 📤 Output argument

- m - mean values.
- v - variance values.

## 📄 Description

<b>unidstat</b> computes mean and variance for the discrete uniform distribution on integers from 1 to <b>n</b>.

## 💡 Example

```matlab
[m, v] = unidstat([1 5 10]);
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
