# convertStringsToChars

Convert string arrays to character arrays.

## 📝 Syntax

- C = convertStringsToChars(S)
- [B1, B2, ..., BN] = convertStringsToChars(A1, A2, ..., AN)

## 📥 Input argument

- S - if S is a string array, output C will be converted to an cell of strings or an character vector (if S is scalar).
- A1, A2, ..., AN - variables to convert to char array if it is a string array.

## 📤 Output argument

- C - a char array or unaltered variable
- B1, B2, ..., BN - variables converted to char array if it is a string array.

## 📄 Description


<b>convertStringsToChars</b> converts string arrays to character arrays.

## 💡 Example



```matlab
A = convertStringsToChars("Nelson")
A = convertStringsToChars(["Nelson", string(NaN)])
```


## 🔗 See also

[convertCharsToStringss](../../string/1_create_convert_text/convertCharsToStrings.md), [cellstr](../../data_structures/cellstr.md), [string](../../string/1_create_convert_text/string.md), [char](../../string/1_create_convert_text/char.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
