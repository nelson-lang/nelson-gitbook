# append

combines strings horizontally.

## 📝 Syntax

- res = append(s1, s2, ..., sN)

## 📥 Input argument

- s1, s2, ..., sN - a string, string array or cell of strings.

## 📤 Output argument

- res - a string, string array or cell of strings.

## 📄 Description

<b>strcat</b> combines strings horizontally.

If all inputs are character arrays, then<b>res</b> is a character array.

If any input is a string array, then the <b>res</b> is a string array.

If any input is a cell array, and none are string arrays, then<b>res</b> is a cell array of character vectors.

<b>append</b> does not remove trailing white space.

## 💡 Example

```matlab
append("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = append(A, B)
```

## 🔗 See also

[strcat](../string/strcat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
