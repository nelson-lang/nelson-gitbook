# false

Logical false.

## 📝 Syntax

- false
- l = false(n)
- l = false(sz)
- l = false(size(A))
- l = false(n, m, ..., k)
- l = false(n, m, 'like', sp)

## 📥 Input argument

- n - a integer value.
- sz - a row vector of dimensions, such as the result of <b>size</b>.
- A - an array whose size is used to create the output.
- n, m, ..., k - a n -by- m - ... -by- k array to indicate size.
- sp - a sparse or array.

## 📤 Output argument

- l - a logical value: false.

## 📄 Description

<b>false</b> builds an array of logical false values.

## 💡 Example

```matlab
false
false(4)
false(4, 1, 4)
A = zeros(2, 3);
F = false(size(A))
L = logical(sparse(1, 2))
L2 = false(3,'like', L);
```

## 🔗 See also

[true](../logical/true.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
