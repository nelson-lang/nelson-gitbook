# cross

Cross product.

## 📝 Syntax

- R = cross(A, B)
- R = cross(A, B, dim)

## 📥 Input argument

- A, B - numeric arrays.
- dim - positive integer scalar: Dimension to operate along.

## 📤 Output argument

- R - Vector cross Product.

## 📄 Description

<b>R = cross(A, B)</b> returns the cross product of <b>A</b> and <b>B</b>.

## 📚 Bibliography

https://en.wikipedia.org/wiki/Cross_product

## 💡 Example

```matlab
A = [1 2 3;4 5 6;7 8 9];
B = [9 8 7;6 5 4;3 2 1];
R = cross(A, B)
R = cross(A, B, 2)
```

## 🔗 See also

[dot](../special_functions/dot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
