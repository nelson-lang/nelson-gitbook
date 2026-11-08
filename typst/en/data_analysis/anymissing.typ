#import "nelson_help.typ": *

= anymissing <data_analysis:anymissing>

Check whether an array contains missing values.

== Syntax

- #raw("tf = anymissing(A)");

== Input argument

/ A: an array, table or categorical.

== Output argument

/ tf: a logical scalar: #strong[true]; when #strong[A]; has any missing value.

== Description

#strong[tf \= anymissing(A)]; returns #strong[true]; when #strong[A]; contains at least one missing value (for example #strong[NaN]; or #strong[missing];).


== Example

``````matlab
anymissing([1 NaN 3])
``````


== See also

#nlink(<data_analysis:ismissing>)[ismissing];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
