# mustBeLessThan

Checks that value is less than another value or issue error.

## 📝 Syntax

- mustBeLessThan(var, c)
- mustBeLessThan(var, c, argPosition)
- C++: void mustBeLessThan(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Input argument

- var - a variable: logical or numeric array.
- c - a variable: scalar numeric value.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeLessThan</b> checks that value is less than another value or issue error.

## 💡 Example

```matlab
mustBeLessThan(1, 0)
mustBeLessThan(1, 2)
```

## 🔗 See also

[mustBeNumeric](../validators/mustBeNumeric.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
