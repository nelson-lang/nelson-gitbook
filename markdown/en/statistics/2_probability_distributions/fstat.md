# fstat

F mean and variance

## 📝 Syntax

- [m, v] = fstat(v1, v2)

## 📥 Input argument

- v1 - positive scalar or array: numerator degrees of freedom.
- v2 - positive scalar or array: denominator degrees of freedom.

## 📤 Output argument

- m - array: mean values.
- v - array: variance values.

## 📄 Description

<b>fstat</b> returns the mean and variance of the F distribution.

## 💡 Example

```matlab
[m, v] = fstat(5, 6);
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
