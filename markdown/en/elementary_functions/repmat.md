# repmat

Replicate and tile an array.

## 📝 Syntax

- R = repmat(A, m)
- R = repmat(A, m, n)
- R = repmat(A, m, n, p …)
- R = repmat(A, [m n])
- R = repmat(A, [m n p …])

## 📥 Input argument

- A - an array.
- m, n, p … - a value: integer

## 📤 Output argument

- R - result array form by tiling.

## 📄 Description

<b>repmat</b> replicates and tiles an array.

## 💡 Examples

```matlab
repmat(1:5, 2)
```

```matlab
repmat(1:5, [2 3])
```

```matlab
repmat(1:5, [2 3 4])
```

## 🔗 See also

[reshape](../elementary_functions/reshape.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
