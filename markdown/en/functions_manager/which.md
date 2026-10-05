# which

Locates functions and built-in.

## 📝 Syntax

- which(function\_name)
- p = which(function\_name)
- c = which(function\_name, '-all')
- m = which(function\_name, '-module')

## 📥 Input argument

- function\_name - a string: function name.

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
