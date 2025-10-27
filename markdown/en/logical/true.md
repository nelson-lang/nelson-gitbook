# true

Logical true.

## 📝 Syntax

- true
- l = true(n)
- l = true(sz)
- l = true(n, m, ..., k)
- l = true(n, m, 'like', sp)

## 📥 Input argument

- n - a integer value.
- sz - a size vector.
- n, m, ..., k - a n -by- m - ... -by- k array to indicate size.
- sp - a sparse or array.

## 📤 Output argument

- l - a logical value: true.

## 📄 Description

<b>true</b> build a matrix of true.

## 💡 Example

```matlab
true
true(4)
true(4, 1, 4)
L = logical(sparse(1, 2))
L2 = true(3,'like', L);
```

## 🔗 See also

[false](../logical/false.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
