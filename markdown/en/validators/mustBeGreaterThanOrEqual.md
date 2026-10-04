# mustBeGreaterThanOrEqual

Checks that value is greater than or equal to another value or issue error.

## 📝 Syntax

- mustBeGreaterThanOrEqual(var, c)
- mustBeGreaterThanOrEqual(var, c, argPosition)
- C++: void mustBeGreaterThanOrEqual(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Input argument

- var - a variable: array of any type supporting the comparison operator (numeric, logical, char, string, ...). An empty value is always accepted.
- c - a variable: scalar or array with a size compatible with var (implicit expansion).
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeGreaterThanOrEqual</b> checks that value is greater than or equal to another value or issue error.

## 💡 Examples

```matlab
mustBeGreaterThanOrEqual(1, 0)
mustBeGreaterThanOrEqual([2 3 4],5)
```

Compare with an array of compatible size

```matlab
lower = [1; 2];
mustBeGreaterThanOrEqual([1 2 3; 2 3 4], lower)
mustBeGreaterThanOrEqual([1 2 3; 1 3 4], lower)
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
