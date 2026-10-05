#import "nelson_help.typ": *

= countcats <categorical:countcats>

Count categorical elements by category.

== Syntax

- #raw("counts = countcats(A)");
- #raw("counts = countcats(A, dim)");

== Input argument

/ A: Input categorical array.
/ dim: Dimension along which counts are computed. Supported values are #strong[1]; and #strong[2];.

== Output argument

/ counts: Counts in category order. Undefined elements are not counted.

== Description

#strong[countcats]; counts how many elements belong to each category of #strong[A];.

 For matrices, #strong[dim]; controls whether categories are counted down columns or across rows.


== Examples

Count elements in each category.

``````matlab
A = categorical({'red','blue','red',''}); counts = countcats(A)
``````

Count by row.

``````matlab
A = categorical({'red','blue'; 'red','red'}); counts = countcats(A, 2)
``````


== See also

#nlink(<categorical:categories>)[categories];, #nlink(<categorical:histcounts>)[histcounts];, #nlink(<categorical:isundefined>)[isundefined];, #nlink(<data_analysis:summary>)[summary];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
