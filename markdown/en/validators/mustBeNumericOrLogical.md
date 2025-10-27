# mustBeNumericOrLogical

Checks that input is numeric or logical.

## 📝 Syntax

- mustBeNumericOrLogical(var)
- mustBeNumericOrLogical(var, argPosition)
- C++: void mustBeNumericOrLogical(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeNumericOrLogical</b> checks that value is numeric or logical otherwise raise an error.

## 💡 Example

```matlab
mustBeNumericOrLogical(1)
mustBeNumericOrLogical([])
mustBeNumericOrLogical({1})
```

## 🔗 See also

[isnumeric](../types/isnumeric.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
