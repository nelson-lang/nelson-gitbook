# hankel

Hankel matrix

## 📝 Syntax

- H = hankel(c)
- H = hankel(c, r)

## 📥 Input argument

- c - First column of Hankel matrix: vector or scalar.
- r - Last row of Hankel matrix: vector or scalar.

## 📤 Output argument

- H - Hankel Matrix.

## 📄 Description

<b>H = hankel(c)</b> returns a square Hankel Matrix with<b>c</b> the first column of the matrix and the elements are zero below the main anti-diagonal.

<b>H = hankel(c, r)</b> returns a Hankel matrix with<b>c</b> as its first column and <b>r</b> as its last row.

If last element of<b>c</b> differs from the first element of<b>r</b>, then Hankel issues a warning and uses the last element of<b>c</b> for the anti-diagonal.

## 💡 Example

```matlab
c = [1 2 3 4 5];
hankel(c)
```

## 🔗 See also

[hilb](../elementary_functions/hilb.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
