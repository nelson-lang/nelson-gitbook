# mustBeLessThan

Checks that value is less than another value or issue error.

## 📝 Syntax

- mustBeLessThan(var, c)
- mustBeLessThan(var, c, argPosition)
- C++: void mustBeLessThan(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Input argument

- var - a variable: array of any type supporting the comparison operator (numeric, logical, char, string, ...). An empty value is always accepted.
- c - a variable: scalar or array with a size compatible with var (implicit expansion).
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeLessThan</b> checks that value is less than another value or issue error.

## 💡 Examples

```matlab
mustBeLessThan(1, 0)
mustBeLessThan(1, 2)
```

Compare with an array of compatible size

```matlab
upper = [5 10 15];
mustBeLessThan([4 9 14], upper)
mustBeLessThan([4 9 15], upper)
```

## 🔗 See also

[mustBeNumeric](../validators/mustBeNumeric.md).

## 🕔 History

| Version | 📄 Description                                                                                                        |
| ------- | --------------------------------------------------------------------------------------------------------------------- |
| 1.0.0   | initial version                                                                                                       |
| 2.0.0   | c can be an array with a size compatible with var; inputs are no longer restricted to real numeric or logical values. |

<!--
## 👤 Author

Allan CORNET
-->
