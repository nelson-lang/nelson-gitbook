#import "../nelson_help.typ": *

= count <string:3_find_replace.count>

Computes the number of occurrences of an pattern.

== Syntax

- #raw("nbocc = count(str, pattern)");
- #raw("nbocc = count(str, pattern,'IgnoreCase', true)");
- #raw("nbocc = count(str, pattern,'IgnoreCase', false)");

== Input argument

/ str: a string, string array or cell of strings.
/ pattern: a string or string array or cell of strings to find.

== Output argument

/ nbocc: a matrix of integer values.

== Description

#strong[count]; computes the number of occurrences of an pattern.
== Example

``````matlab

str = 'To make a mountain out of a molehill';
k = count(str, 'hill')
k = count(str, 'molehill')
k = count(str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = count(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = count(A, 'son')


``````


== See also

#nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:3_find_replace.endsWith>)[endsWith];, #nlink(<string:3_find_replace.contains>)[contains];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
