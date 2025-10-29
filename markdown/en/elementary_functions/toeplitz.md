# toeplitz

Toeplitz matrix

## 📝 Syntax

- T = toeplitz(c, r)
- T = toeplitz(r)

## 📥 Input argument

- c - a scalar or vector: column of Toeplitz matrix.
- r - a scalar or vector: row of Toeplitz matrix.

## 📤 Output argument

- T - Toeplitz matrix.

## 📄 Description

<b>T = toeplitz(c, r)</b> returns the Toeplitz matrix whose first row is <b>r</b> and first column is <b>c</b>.

<b>T = toeplitz(c)</b> returns the symmetric Toeplitz matrix.

## 📚 Bibliography

https://en.wikipedia.org/wiki/Toeplitz_matrix

## 💡 Example

```matlab
T = toeplitz(1:5, 1:2:7)
```

## 🔗 See also

[hankel](../elementary_functions/hankel.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
