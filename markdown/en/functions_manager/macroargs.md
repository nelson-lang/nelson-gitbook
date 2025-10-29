# macroargs

Returns variables names of a function.

## 📝 Syntax

- [argOut, argIn] = macroarg(function_name)

## 📥 Input argument

- function_name - a string: function name.

## 📤 Output argument

- argOut - a cell with output arguments.
- argIn - a cell with input arguments.

## 📄 Description

<b>macroargs</b> returns input and output variables used by the function.

## 💡 Example

```matlab
[out_args, in_args] = macroarg('getfield')
[out_args, in_args] = macroarg('deal')
```

## 🔗 See also

[which](../functions_manager/which.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
