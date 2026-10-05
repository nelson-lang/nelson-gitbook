#import "nelson_help.typ": *

= reordercats <categorical:reordercats>

Reorder categories in a categorical array.

== Syntax

- #raw("B = reordercats(A)");
- #raw("B = reordercats(A, newOrder)");

== Input argument

/ A: Input categorical array.
/ newOrder: New category order, specified by category names or numeric positions.

== Output argument

/ B: Categorical array with the same displayed values as #strong[A]; and a reordered category list.

== Description

#strong[reordercats]; changes the order of categories. If #strong[newOrder]; is omitted, categories are sorted by name.

 For ordinal arrays, the new category order changes relational comparisons and sorting order.


== Examples

Specify a new order.

``````matlab
A = categorical({'red','blue'}, {'red','blue'}); B = reordercats(A, {'blue','red'}); categories(B)
``````

Sort categories by name.

``````matlab
A = categorical({'plane','car','train'}); B = reordercats(A); categories(B)
``````


== See also

#nlink(<categorical:categories>)[categories];, #nlink(<categorical:renamecats>)[renamecats];, #nlink(<categorical:isordinal>)[isordinal];, #nlink(<data_analysis:sort>)[sort];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
