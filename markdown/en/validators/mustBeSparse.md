# mustBeSparse

Checks that value is a sparse matrix or raise an error.

## 📝 Syntax

- mustBeSparse(var)
- mustBeSparse(var, argPosition)
- C++: void mustBeSparse(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement issparse method.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeSparse</b> checks that value is a sparse matrix or raise an error.

## 💡 Example

```matlab
mustBeSparse(true)
mustBeSparse(eye(3, 4))
mustBeSparse(sparse(eye(3, 4)))
```

## 🔗 See also

[issparse](../types/issparse.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.11.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
