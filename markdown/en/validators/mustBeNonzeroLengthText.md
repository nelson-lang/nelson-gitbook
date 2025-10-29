# mustBeNonzeroLengthText

Checks that value is text with nonzero length or raise an error.

## 📝 Syntax

- mustBeNonzeroLengthText(var)
- mustBeNonzeroLengthText(var, argPosition)
- C++: void mustBeNonzeroLengthText(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: a string array, a cell of strings, or row vector characters array.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeNonzeroLengthText</b> checks that value is text with nonzero length or raise an error.

## 💡 Example

```matlab
mustBeNonzeroLengthText('true')
mustBeNonzeroLengthText("hello")
mustBeNonzeroLengthText('')
```

## 🔗 See also

[ischar](../types/ischar.md), [isstring](../types/isstring.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
