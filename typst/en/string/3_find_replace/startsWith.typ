#import "../nelson_help.typ": *

= startsWith <string:3_find_replace.startsWith>

checks if string starts with pattern.

== Syntax

- #raw("tf = startsWith(str, pattern)");
- #raw("tf = startsWith(str, pattern,'IgnoreCase', true)");
- #raw("tf = startsWith(str, pattern,'IgnoreCase', false)");

== Input argument

/ str: a string, string array, cell of strings or categorical array.
/ pattern: a string to find.

== Output argument

/ tf: a matrix of logical.

== Description

#strong[startsWith]; returns #strong[true]; if #strong[str]; starts with#strong[pattern];.

 If #strong[str]; is a categorical array, #strong[startsWith]; tests the category name of each element and returns a logical array of the same size. Undefined elements return #strong[false];. #strong[pattern]; cannot be categorical.


== Examples

``````matlab

str = 'To make a mountain out of a molehill';
k = startsWith (str, 'in')
k = startsWith (str, 'to')
k = startsWith (str, 'to', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = startsWith(A, 'Nel')

A = ["Nel", "son"; "Nelson", "Modules"];
k = startsWith(A, "Nel")


``````

Pattern matching on the category names of a categorical array.

``````matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = startsWith(C, "thunder", 'IgnoreCase', true)
``````


== See also

#nlink(<string:3_find_replace.endsWith>)[endsWith];, #nlink(<string:3_find_replace.contains>)[contains];, #nlink(<categorical:categorical>)[categorical];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [categorical array accepted as str input.],
)

// Author: Allan CORNET
