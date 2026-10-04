# pascal

Pascal's triangle

## 📝 Syntax

- P = pascal(N)
- P = pascal(N, 1)
- P = pascal(N, 2)
- P = pascal(..., ClassName)

## 📥 Input argument

- N - size of the Pascal's triangle.
- kind - (optional) orientation of the triangle: - 0 (default): upright, - 1: flipped horizontally, - 2: flipped vertically.
- ClassName - (optional) data type of the resulting matrix (e.g., 'double', 'single').

## 📤 Output argument

- R - resulting Pascal's triangle matrix.

## 📄 Description

<b>pascal</b> generates a Pascal's triangle matrix of size N x N.

## 💡 Example

```matlab
pascal(3)
      pascal(4, 1)
      pascal(5, 2)
```

## 🔗 See also

[gallery](../../elementary_functions/gallery.md), [vander](../../elementary_functions/vander.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
