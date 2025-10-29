# mustBeNegative

Checks that value is negative or raise an error.

## 📝 Syntax

- mustBeNegative(var)
- mustBeNegative(var, argPosition)
- C++: void mustBeNegative(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and lt methods.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeNegative</b> checks that value is negative or raise an error.

## 💡 Example

```matlab
mustBeNegative(-1)
mustBeNegative(1)
```

## 🔗 See also

[mustBePositive](../validators/mustBePositive.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
