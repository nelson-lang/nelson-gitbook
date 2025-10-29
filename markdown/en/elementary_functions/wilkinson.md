# wilkinson

Wilkinson's eigenvalue test matrix

## 📝 Syntax

- W = wilkinson(n)
- W = wilkinson(n, classname)

## 📥 Input argument

- n - scalar integer value: order.
- classname - row character vector or scalar string: class name desired ('double' by default).

## 📤 Output argument

- W - Wilkinson's eigenvalue test matrix.

## 📄 Description

<b>W = wilkinson(n)</b> returns the wilkinson Matrix of order <b>n</b>.

## 📚 Bibliography

https://en.wikipedia.org/wiki/Wilkinson_matrix

## 💡 Example

```matlab
W = wilkinson(4)
```

## 🔗 See also

[diag](../constructors_functions/diag.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
