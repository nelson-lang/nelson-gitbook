# issparse

Return true if variable var is a sparse array.

## 📝 Syntax

- res = issparse(var)

## 📥 Input argument

- var - a variable

## 📤 Output argument

- res - a logical: true or false

## 📄 Description

<b>issparse</b> returns a logical 1 if the argument is a sparse array and a logical 0 otherwise.

## 💡 Examples

```matlab
A = 1;
res = issparse(A)
```

```matlab
B = sparse(1);
res = issparse(B)
```

## 🔗 See also

[sparse](../sparse/sparse.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
