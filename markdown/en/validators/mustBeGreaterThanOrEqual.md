# mustBeGreaterThanOrEqual

Checks that value is greater than or equal to another value or issue error.

## 📝 Syntax

- mustBeGreaterThanOrEqual(var, c)
- mustBeGreaterThanOrEqual(var, c, argPosition)
- C++: void mustBeGreaterThanOrEqual(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Input argument

- var - a variable: logical or numeric array.
- c - a variable: scalar numeric value.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeGreaterThanOrEqual</b> checks that value is greater than or equal to another value or issue error.

## 💡 Example

```matlab
mustBeGreaterThanOrEqual(1, 0)
mustBeGreaterThanOrEqual([2 3 4],5)
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
