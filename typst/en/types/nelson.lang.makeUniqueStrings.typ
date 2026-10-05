#import "nelson_help.typ": *

= nelson.lang.makeUniqueStrings <types:nelson.lang.makeUniqueStrings>

Make strings unique by adding numeric suffixes.

== Syntax

- #raw("U = nelson.lang.makeUniqueStrings(S)");
- #raw("U = nelson.lang.makeUniqueStrings(S, excludedStrings)");
- #raw("U = nelson.lang.makeUniqueStrings(S, whichStringsIdx)");
- #raw("U = nelson.lang.makeUniqueStrings(S, excludedStrings, maxStringLength)");
- #raw("U = nelson.lang.makeUniqueStrings(S, whichStringsIdx, maxStringLength)");
- #raw("[U, modified] = nelson.lang.makeUniqueStrings(...)");

== Input argument

/ S: string array, character vector, or cell array of character vectors.
/ excludedStrings: strings that generated values must not duplicate.
/ whichStringsIdx: numeric indices or logical mask selecting which elements to make unique. This argument is used instead of excludedStrings.
/ maxStringLength: positive integer scalar maximum output length.

== Output argument

/ U: unique strings, returned with the same text container type as S.
/ modified: logical array indicating which input elements were changed.

== Description

#strong[nelson.lang.makeUniqueStrings]; appends suffixes such as #strong[\_1]; and #strong[\_2]; to selected elements until they are unique.


== Example

``````matlab
nelson.lang.makeUniqueStrings({'a', 'a', 'b', 'a'})
nelson.lang.makeUniqueStrings({'a', 'b'}, {'a', 'b'})
``````


== See also

#nlink(<types:nelson.lang.makeValidName>)[nelson.lang.makeValidName];, #nlink(<core:namelengthmax>)[namelengthmax];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
