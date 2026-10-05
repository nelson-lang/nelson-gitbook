#import "nelson_help.typ": *

= ismember <operators:ismember>

Array elements that are members of another array.

== Syntax

- #raw("T = ismember(A, B)");
- #raw("[T, loc] = ismember(A, B)");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ T: result of ismember.
/ loc: lowest index in B for each matching element of A, 0 where there is no match.

== Description

#strong[T \= ismember(A, B)]; returns an array of logical where the data in#strong[A]; is found in #strong[B];.

 #strong[\[T, loc\] \= ismember(A, B)]; also returns #strong[loc];, the lowest index in #strong[B]; for each element of #strong[A]; that is a member of #strong[B];, and 0 otherwise.


== Example

``````matlab
A = [50 30 40 20];
B = [20 40 40 40 60 80];
T = ismember(A, B)

T = ismember(["a","b","f"], ["b", "f", "c"])


``````


== See also

#nlink(<data_analysis:sort>)[sort];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
