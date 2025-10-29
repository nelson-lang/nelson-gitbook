# char

Converts to a character array.

## 📝 Syntax

- res = char(var)
- res = char(var1, var2)
- res = char(var1, var2, ..., varN)

## 📥 Input argument

- var - a cell of strings, string array or an numeric array.
- var1, var2, ..., varN - strings or an numeric arrays.

## 📤 Output argument

- res - a string

## 📄 Description

<b>char</b> converts numerical input into character data by taking the corresponding unicode character for each element.

## 💡 Examples

```matlab
M = [ 104   101   108   108   111;
20320   22909 32    32    32];
char(M)
```

```matlab
R = char('these', 'are', 'test', 'strings')
```

```matlab
R = char(["these"; "are"; "test"; "strings"])
```

## 🔗 See also

[double](../double/double.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
