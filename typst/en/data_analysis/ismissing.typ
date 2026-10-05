#import "nelson_help.typ": *

= ismissing <data_analysis:ismissing>

Check for missing values.

== Syntax

- #raw("tf = ismissing(M)");

== Input argument

/ M: a variable

== Output argument

/ tf: logical: result of 'ismissing'.

== Description

#strong[ismissing]; returns a logical array which is true where elements of M are #strong[missing]; values.

 missing data are defined as:

 #strong[NaN]; for double or single

 #strong[missing]; for string array

 #strong[' ']; for character array

 #strong[' ']; for cell of character array


== Example

``````matlab
A = ["Nel", NaN, "son"];
ismissing(A)
B = [1 2 NaN Inf];
ismissing(B)
C = 'Nel son'
ismissing(C)
D = {'Nel' '' 'son'}
ismissing(D)

``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isfinite>)[isfinite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
