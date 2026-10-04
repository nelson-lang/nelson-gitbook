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

The test is based on sparse storage, not on the value class. Sparse double, single, logical, complex double, and complex single arrays all return true.

Full arrays return false even when they contain mostly zero values.

## 💡 Examples

```matlab
A = 1;
res = issparse(A)
```

```matlab
B = sparse(1);
res = issparse(B)
```

```matlab
S = sparse(single([1 + 2i 0; 0 0]));
res = issparse(S)
```

## 🔗 See also

[sparse](../sparse/sparse.md).

## 🕔 History

| Version | 📄 Description                                       |
| ------- | ---------------------------------------------------- |
| 2.0.0   | documented sparse single and complex single behavior |
| 1.0.0   | initial version                                      |

<!--
## 👤 Author

Allan CORNET
-->
