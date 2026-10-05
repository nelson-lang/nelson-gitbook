#import "nelson_help.typ": *

= nelson.lang.makeValidName <types:nelson.lang.makeValidName>

Convert text to valid Nelson variable names.

== Syntax

- #raw("N = nelson.lang.makeValidName(S)");
- #raw("N = nelson.lang.makeValidName(S, 'ReplacementStyle', style)");
- #raw("N = nelson.lang.makeValidName(S, 'Prefix', prefix)");
- #raw("[N, modified] = nelson.lang.makeValidName(...)");

== Input argument

/ S: string array, character vector, or cell array of character vectors.
/ style: replacement style: 'underscore', 'delete', or 'hex'.
/ prefix: valid variable name used when a generated name does not start with a letter.

== Output argument

/ N: valid names, returned with the same text container type as S.
/ modified: logical array indicating which input elements were changed.

== Description

#strong[nelson.lang.makeValidName]; removes whitespace, replaces unsupported characters, adds a prefix when needed, and truncates names to #strong[namelengthmax];.


== Example

``````matlab
names = nelson.lang.makeValidName({'a b', 'a-b', '1a'})
[names, modified] = nelson.lang.makeValidName("a#b", 'ReplacementStyle', 'hex')
``````


== See also

#nlink(<types:isvarname>)[isvarname];, #nlink(<types:nelson.lang.makeUniqueStrings>)[nelson.lang.makeUniqueStrings];, #nlink(<core:namelengthmax>)[namelengthmax];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
