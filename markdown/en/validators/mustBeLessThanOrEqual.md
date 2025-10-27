# mustBeLessThanOrEqual

Checks that value is less than or equal to another value or issue error.

## 📝 Syntax

- mustBeLessThanOrEqual(var, c)
- mustBeLessThanOrEqual(var, c, argPosition)
- C++: void mustBeLessThanOrEqual(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Input argument

- var - a variable: logical or numeric array.
- c - a variable: scalar numeric value.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeLessThanOrEqual</b> checks that value is less than or equal to another value or issue error.

## 💡 Example

```matlab
mustBeLessThanOrEqual(1, 0)
mustBeLessThanOrEqual([2 3 4],2)
```

## 🔗 See also

[mustBeNumeric](../validators/mustBeNumeric.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
