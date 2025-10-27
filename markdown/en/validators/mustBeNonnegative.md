# mustBeNonnegative

Checks that value is nonnegative or raise an error.

## 📝 Syntax

- mustBeNonnegative(var)
- mustBeNonnegative(var, argPosition)
- C++: void mustBeNonnegative(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and ge methods.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeNonnegative</b> checks that value is nonnegative or raise an error.

## 💡 Example

```matlab
mustBeNonnegative(1)
mustBeNonnegative(-1)
```

## 🔗 See also

[mustBePositive](../validators/mustBePositive.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
