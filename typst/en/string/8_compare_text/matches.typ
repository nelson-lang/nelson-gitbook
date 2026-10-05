#import "../nelson_help.typ": *

= matches <string:8_compare_text.matches>

Determine if pattern matches with strings.

== Syntax

- #raw("res = matches(str, pattern)");
- #raw("res = matches(str, pattern, 'IgnoreCase', true)");

== Input argument

/ str: a string, string array, cell of strings or categorical array.
/ pattern: a string, string array or cell of strings.

== Output argument

/ res: a logical: true if the two matches and false otherwise.

== Description

#strong[matches]; determines if pattern matches with strings.

 If #strong[str]; is a categorical array, #strong[matches]; tests the category name of each element and returns a logical array of the same size. Undefined elements return #strong[false];. #strong[pattern]; cannot be categorical.


== Examples

``````matlab
matches("Nelson", 'nelSon')
matches("Nelson", 'Nelson')
str = ["yellow", "green", "blue", "brown"];
R = matches(str, ["yellow", "Brown"], 'IgnoreCase', true);

``````

Pattern matching on the category names of a categorical array.

``````matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = matches(C, "FIRE", 'IgnoreCase', true)
``````


== See also

#nlink(<string:8_compare_text.strcmp>)[strcmp];, #nlink(<categorical:categorical>)[categorical];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [categorical array accepted as str input.],
)

// Author: Allan CORNET
