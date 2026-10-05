#import "../nelson_help.typ": *

= contains <string:3_find_replace.contains>

checks if string contains with pattern.

== Syntax

- #raw("tf = contains(str, pattern)");
- #raw("tf = contains(str, pattern,'IgnoreCase', true)");
- #raw("tf = contains(str, pattern,'IgnoreCase', false)");

== Input argument

/ str: a string, string array, cell of strings or categorical array.
/ pattern: a string to find.

== Output argument

/ tf: a matrix of logical.

== Description

#strong[contains]; returns #strong[true]; if #strong[str]; contains#strong[pattern];.

 If #strong[str]; is a categorical array, #strong[contains]; tests the category name of each element and returns a logical array of the same size. Undefined elements return #strong[false];. #strong[pattern]; cannot be categorical.


== Examples

``````matlab

str = 'To make a mountain out of a molehill';
k = contains (str, 'hill')
k = contains (str, 'molehill')
k = contains (str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = contains(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = contains(A, 'son')


``````

Pattern matching on the category names of a categorical array.

``````matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = contains(C, "storm", 'IgnoreCase', true)
``````


== See also

#nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:3_find_replace.endsWith>)[endsWith];, #nlink(<categorical:categorical>)[categorical];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [categorical array accepted as str input.],
)

// Author: Allan CORNET
