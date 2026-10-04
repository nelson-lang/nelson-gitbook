# vectorize

Insert element-wise operators in an expression string.

## 📝 Syntax

- s = vectorize(expr)

## 📥 Input argument

- expr - Expression as text.

## 📤 Output argument

- s - Vectorized expression text.

## 📄 Description

<b>vectorize</b> prefixes power, multiplication and division operators with dots when needed.

## 💡 Example

```matlab
s = vectorize('x^2 + y*z')
```

## 🔗 See also

[str2func](../function_handle/str2func.md), [func2str](../function_handle/func2str.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
