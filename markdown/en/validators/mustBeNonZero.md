# mustBeNonZero

Checks that value is not zero.

## 📝 Syntax

- mustBeNonZero(var)
- mustBeNonZero(var, argPosition)
- C++: void mustBeNonZero(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement eq, isnumeric and islogical methods.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeNonZero</b> checks that value is not zero or raise an error.

## 💡 Example

```matlab
mustBeNonZero(1)
mustBeNonZero([])
mustBeNonZero(NaN)
mustBeNonZero(0)

```

## 🔗 See also

[isempty](../types/isempty.md), [eq](../elementary_functions/eq.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
