# hypot

Square root of sum of squares

## 📝 Syntax

- C = hypot(A, B)

## 📥 Input argument

- A - a variable: scalars, vectors, matrices, multidimensional arrays single or double
- B - a variable: scalars, vectors, matrices, multidimensional arrays single or double

## 📤 Output argument

- R - result of hypot: hypothenuse.

## 📄 Description

<b>hypot</b> computes the hypothenuse.

If one or both inputs is NaN, then <b>hypot</b> returns <b>NaN</b>.

## 💡 Example

```matlab
R = hypot(1e308, 1e308)
R = hypot(1e309, 1e309)
```

## 🔗 See also

[abs](../elementary_functions/abs.md), [sqrt](../elementary_functions/sqrt.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
