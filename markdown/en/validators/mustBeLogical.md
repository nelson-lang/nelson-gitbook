# mustBeLogical

Checks that value is logical or raise an error.

## 📝 Syntax

- mustBeLogical(var)
- mustBeLogical(var, argPosition)
- C++: void mustBeLogical(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement islogical and isempty methods.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeLogical</b> checks that value is logical or raise an error.

Empty values are ignored.

## 💡 Example

```matlab
mustBeLogical(true)
mustBeLogical([])
mustBeLogical([true false])
```

## 🔗 See also

[isempty](../elementary_functions/isempty.md), [islogical](../types/islogical.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
