#import "nelson_help.typ": *

= randperm <random:randperm>

Random permutation of integers values.

== Syntax

- #raw("p = randperm(n, k)");

== Input argument

/ n: Number of integers in sample interval (positive integer).
/ k: Number of integers to select (positive integer).

== Output argument

/ p: a row vector.

== Description

#strong[p \= randperm(n)]; returns a row vector containing a random permutation of #strong[1:n];.


== Example

``````matlab
randperm(7)
``````


== See also

#nlink(<random:rand>)[rand];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.15.0], [add second input argument for number of elements to select],
)

// Author: Allan CORNET
