# iscell

Return true if variable var is a cell array.

## 📝 Syntax

- res = iscell(var)

## 📥 Input argument

- var - a variable

## 📤 Output argument

- res - a logical: true or false

## 📄 Description

<b>iscell</b> returns a logical 1 if the argument is a cell array and a logical 0 otherwise.

## 💡 Examples

```matlab
A = 3;
res = iscell(A)
```

```matlab
B = {'NelSon', 3, true};
res = iscell(B)
```

## 🔗 See also

[class](../types/class.md), [isstruct](../integer/isstruct.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
