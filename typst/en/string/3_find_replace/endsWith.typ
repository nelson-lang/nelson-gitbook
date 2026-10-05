#import "../nelson_help.typ": *

= endsWith <string:3_find_replace.endsWith>

checks if string ends with pattern.

== Syntax

- #raw("tf = endsWith(str, pattern)");
- #raw("tf = endsWith(str, pattern,'IgnoreCase', true)");
- #raw("tf = endsWith(str, pattern,'IgnoreCase', false)");

== Input argument

/ str: a string, string array, cell of strings or categorical array.
/ pattern: a string to find.

== Output argument

/ tf: a matrix of logical.

== Description

#strong[endsWith]; returns #strong[true]; if #strong[str]; ends with#strong[pattern];.

 If #strong[str]; is a categorical array, #strong[endsWith]; tests the category name of each element and returns a logical array of the same size. Undefined elements return #strong[false];. #strong[pattern]; cannot be categorical.


== Examples

``````matlab

str = 'To make a mountain out of a molehill';
k = endsWith (str, 'hill')
k = endsWith (str, 'molehill')
k = endsWith (str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = endsWith(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = endsWith(A, "son")


``````

Pattern matching on the category names of a categorical array.

``````matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = endsWith(C, "storm", 'IgnoreCase', true)
``````


== See also

#nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:3_find_replace.contains>)[contains];, #nlink(<categorical:categorical>)[categorical];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [categorical array accepted as str input.],
)

// Author: Allan CORNET
