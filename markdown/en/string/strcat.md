# strcat

concatenate strings horizontally.

## 📝 Syntax

- res = strcat(s1, s2, ..., sN)

## 📥 Input argument

- s1, s2, ..., sN - a string, string array or cell of strings.

## 📤 Output argument

- res - a string, string array or cell of strings.

## 📄 Description

<b>strcat</b> concatenate strings horizontally.

If all inputs are character arrays, then <b>res</b> is a character array.

If any input is a string array, then the <b>res</b> is a string array.

If any input is a cell array, and none are string arrays, then <b>res</b> is a cell array of character vectors.

For cell and string array inputs, <b>strcat</b> does not remove trailing white space.

For character array inputs, <b>strcat</b> removes trailing ASCII white-space characters.

## 💡 Example

```matlab
strcat("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = strcat(A, B)
```

## 🔗 See also

[append](../string/append.md), [join](../string/join.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
