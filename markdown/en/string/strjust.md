# strjust

Justify strings

## 📝 Syntax

- J = strjust(str)
- J = strjust(str, side)

## 📥 Input argument

- str - characters vector, cell of characters or string array.
- side - 'left', 'center', 'right' (default).

## 📤 Output argument

- J - justified text

## 📄 Description

<b>J = strjust(str, side)</b> returns the text that is justified on the side specified by<b>side</b>.

## 💡 Examples

```matlab
S = ["a"; "ab"; "abc"; "abcd"];
J = strjust (S)
J = strjust (S, 'left')
J = strjust (S, 'center')
J = strjust (S, 'right')
```

```matlab
J = strjust('                 text', 'center')
```

## 🔗 See also

[blanks](../string/blanks.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
