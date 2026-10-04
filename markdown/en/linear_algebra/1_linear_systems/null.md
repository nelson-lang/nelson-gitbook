# null

Null space of a matrix.

## 📝 Syntax

- Z = null(A)
- Z = null(A, 'r')

## 📥 Input argument

- A - a 2D numeric matrix.

## 📤 Output argument

- Z - orthonormal basis for the null space of A; with 'r', a rational basis.

## 📄 Description

<b>null</b> returns an orthonormal basis for the null space of A, obtained from the singular value decomposition. null(A, 'r') returns a rational basis for the null space obtained from the reduced row echelon form.

## 💡 Example

```matlab
A = [1 2 3; 4 5 6; 7 8 9];
Z = null(A)
```

## 🔗 See also

[orth](../../linear_algebra/orth.md), [rank](../../linear_algebra/rank.md), [svd](../../linear_algebra/svd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
