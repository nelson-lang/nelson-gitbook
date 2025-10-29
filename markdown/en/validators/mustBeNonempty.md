# mustBeNonempty

Checks that value is nonempty or raise an error.

## 📝 Syntax

- mustBeNonempty(var)
- mustBeNonempty(var, argPosition)
- C++: void mustBeNonempty(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement isempty methods.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeNonempty</b> checks that value is not empty or raise an error.

## 💡 Example

```matlab
mustBeNonempty(1)
mustBeNonempty([])
```

## 🔗 See also

[isempty](../types/isempty.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
