# convertCharsToStrings

Convert chars arrays to string arrays.

## 📝 Syntax

- S = convertCharsToStrings(C)
- [B1, B2, ..., BN] = convertCharsToStrings(A1, A2, ..., AN)

## 📥 Input argument

- C - if C is a char array, output S will be converted to an string array.
- A1, A2, ..., AN - variables to convert to string array if it is a char array.

## 📤 Output argument

- S - a string array or unaltered variable
- B1, B2, ..., BN - variables converted to string array if it is a char array or cell of char array.

## 📄 Description

<b>convertCharsToStrings</b> converts chars arrays to string arrays.

## 💡 Example

```matlab
[A, B, C, D] = convertCharsToStrings("one", 2, 'three', {'four' ; 'NaN' ;'five'})
R = convertCharsToStrings(['Nelson' ; '  is  '; '  good'])
```

## 🔗 See also

[convertStringsToChars](../string/convertStringsToChars.md), [cellstr](../data_structures/cellstr.md), [string](../string/string.md), [char](../string/char.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
