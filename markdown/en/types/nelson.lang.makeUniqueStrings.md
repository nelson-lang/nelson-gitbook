# nelson.lang.makeUniqueStrings

Make strings unique by adding numeric suffixes.

## 📝 Syntax

- U = nelson.lang.makeUniqueStrings(S)
- U = nelson.lang.makeUniqueStrings(S, excludedStrings)
- U = nelson.lang.makeUniqueStrings(S, whichStringsIdx)
- U = nelson.lang.makeUniqueStrings(S, excludedStrings, maxStringLength)
- U = nelson.lang.makeUniqueStrings(S, whichStringsIdx, maxStringLength)
- [U, modified] = nelson.lang.makeUniqueStrings(...)

## 📥 Input argument

- S - string array, character vector, or cell array of character vectors.
- excludedStrings - strings that generated values must not duplicate.
- whichStringsIdx - numeric indices or logical mask selecting which elements to make unique. This argument is used instead of excludedStrings.
- maxStringLength - positive integer scalar maximum output length.

## 📤 Output argument

- U - unique strings, returned with the same text container type as S.
- modified - logical array indicating which input elements were changed.

## 📄 Description

<b>nelson.lang.makeUniqueStrings</b> appends suffixes such as <b>\_1</b> and <b>\_2</b> to selected elements until they are unique.

## 💡 Example

```matlab
nelson.lang.makeUniqueStrings({'a', 'a', 'b', 'a'})
nelson.lang.makeUniqueStrings({'a', 'b'}, {'a', 'b'})
```

## 🔗 See also

[nelson.lang.makeValidName](../types/nelson.lang.makeValidName.md), [namelengthmax](../core/namelengthmax.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
