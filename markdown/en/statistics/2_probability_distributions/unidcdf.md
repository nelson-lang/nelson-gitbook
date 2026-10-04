# unidcdf

Discrete uniform cumulative distribution function

## 📝 Syntax

- p = unidcdf(x, n)

## 📥 Input argument

- x - real numeric array.
- n - positive integer scalar or array: maximum value.

## 📤 Output argument

- p - cumulative probabilities.

## 📄 Description

<b>unidcdf</b> computes cumulative probabilities for the discrete uniform distribution on integers from 1 to <b>n</b>.

## 💡 Example

```matlab
x = 0:6;
p = unidcdf(x, 5);
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
