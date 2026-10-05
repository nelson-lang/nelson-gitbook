#import "nelson_help.typ": *

= spconvert <sparse:spconvert>

Convert indexed data to a sparse matrix.

== Syntax

- #raw("S = spconvert(D)");

== Input argument

/ D: a full m-by-3 or m-by-4 double matrix.

== Output argument

/ S: a sparse double or complex double matrix.

== Description

#strong[spconvert]; builds a sparse matrix from rows #strong[\[i j v\]];. With four columns, rows are interpreted as #strong[\[i j real imag\]];.


== Example

``````matlab
D = [1 1 10; 2 3 20; 3 2 30];
S = spconvert(D)
``````


== See also

#nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:IJV>)[IJV];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
