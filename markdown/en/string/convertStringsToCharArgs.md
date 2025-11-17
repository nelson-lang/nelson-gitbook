# convertStringToCharArgs

Convert string arrays to character arrays or cell of char vectors.

## 📝 Syntax

- C = convertStringToCharArgs(S)

## 📥 Input argument

- S - Input string scalar or string array. If S is a string scalar, the output C is a character vector. If S is a string array, C is returned as a cell array of character vectors.

## 📤 Output argument

- C - Character vector (for scalar string input) or cell array of character vectors (for string arrays). If the input was not a string, C is the unmodified input.

## 📄 Description

<b>convertStringToCharArgs</b> converts either a cell array of string values or a string array into a cell array of character vectors.

To convert a single string scalar to a character vector, use the char function instead.

This conversion is required because some functions (example set or get) currently do not accept string inputs.

## 💡 Example

Convert a string scalar to a char vector and a string array to a cell of char vectors.

```matlab

% Scalar string -> char vector
C = convertStringToCharArgs("Nelson")
% String array -> cell array of char vectors
C2 = convertStringToCharArgs({"a",'b'; 1,"d"})
```

## 🔗 See also

[convertCharsToStrings](../string/convertCharsToStrings.md), [cellstr](../data_structures/cellstr.md), [string](../string/string.md), [char](../string/char.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
