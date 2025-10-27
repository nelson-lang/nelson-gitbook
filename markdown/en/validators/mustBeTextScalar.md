# mustBeTextScalar

Checks that value is single piece of text or raise an error.

## 📝 Syntax

- mustBeTextScalar(var)
- mustBeTextScalar(var, argPosition)
- C++: void mustBeTextScalar(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: a scalar string array or row vector characters array.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeTextScalar</b> that value is single piece of text or raise an error.

## 💡 Example

```matlab
mustBeTextScalar('true')
mustBeTextScalar(["f", "ff"])
mustBeTextScalar("hello")
```

## 🔗 See also

[isscalar](../elementary_functions/isscalar.md), [ischar](../types/ischar.md), [isstring](../types/isstring.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
