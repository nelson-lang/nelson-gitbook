# which

Locates functions and built-in.

## 📝 Syntax

- which(function_name)
- p = which(function_name)
- c = which(function_name, '-all')
- m = which(function_name, '-module')

## 📥 Input argument

- function_name - a string: function name.

## 📤 Output argument

- p - a string: path of the function or built-in
- c - a cell of strings: paths of the function or built-in.
- m - a cell of strings: name of the modules where function or built-in is available.

## 📄 Description

<b>which</b> returns the path of a function or a built-in.

## 💡 Example

```matlab
which('cos')
p = which('cos')
c = which('cos', '-all')
m = which('cos', '-module')

```

## 🔗 See also

[what](../functions_manager/what.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
