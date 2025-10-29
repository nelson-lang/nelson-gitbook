# mustBeVector

Checks that value is vector or raise an error.

## 📝 Syntax

- mustBeVector(var)
- mustBeVector(var, 'allow-all-empties')
- mustBeVector(var, argPosition)
- mustBeVector(var, 'allow-all-empties', argPosition)
- C++: void mustBeVector(const ArrayOfVector& args, bool allowsAllEmpties, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement isvector methods.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeVector</b> checks that value is vector or raise an error.

## 💡 Example

```matlab
mustBeVector(true)
mustBeVector([1 2])
mustBeVector([])
mustBeVector([], 'allows-all-empties')
```

## 🔗 See also

[isvector](../elementary_functions/isvector.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
