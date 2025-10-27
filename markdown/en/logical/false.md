# false

Logical false.

## 📝 Syntax

- false
- l = false(n)
- l = false(sz)
- l = false(n, m, ..., k)
- l = false(n, m, 'like', sp)

## 📥 Input argument

- n - a integer value.
- sz - a size vector.
- n, m, ..., k - a n -by- m - ... -by- k array to indicate size.
- sp - a sparse or array.

## 📤 Output argument

- l - a logical value: false.

## 📄 Description

<b>false</b> build a matrix of false.

## 💡 Example

```matlab
false
false(4)
false(4, 1, 4)
L = logical(sparse(1, 2))
L2 = false(3,'like', L);
```

## 🔗 See also

[true](../logical/true.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
