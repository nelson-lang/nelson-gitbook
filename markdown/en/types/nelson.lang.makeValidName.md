# nelson.lang.makeValidName

Convert text to valid Nelson variable names.

## 📝 Syntax

- N = nelson.lang.makeValidName(S)
- N = nelson.lang.makeValidName(S, 'ReplacementStyle', style)
- N = nelson.lang.makeValidName(S, 'Prefix', prefix)
- [N, modified] = nelson.lang.makeValidName(...)

## 📥 Input argument

- S - string array, character vector, or cell array of character vectors.
- style - replacement style: 'underscore', 'delete', or 'hex'.
- prefix - valid variable name used when a generated name does not start with a letter.

## 📤 Output argument

- N - valid names, returned with the same text container type as S.
- modified - logical array indicating which input elements were changed.

## 📄 Description

<b>nelson.lang.makeValidName</b> removes whitespace, replaces unsupported characters, adds a prefix when needed, and truncates names to <b>namelengthmax</b>.

## 💡 Example

```matlab
names = nelson.lang.makeValidName({'a b', 'a-b', '1a'})
[names, modified] = nelson.lang.makeValidName("a#b", 'ReplacementStyle', 'hex')
```

## 🔗 See also

[isvarname](../types/isvarname.md), [nelson.lang.makeUniqueStrings](../types/nelson.lang.makeUniqueStrings.md), [namelengthmax](../core/namelengthmax.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
