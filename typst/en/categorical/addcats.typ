#import "nelson_help.typ": *

= addcats <categorical:addcats>

Add categories to a categorical array.

== Syntax

- #raw("B = addcats(A, names)");
- #raw("B = addcats(A, names, 'Before', anchor)");
- #raw("B = addcats(A, names, 'After', anchor)");

== Input argument

/ A: Input categorical array.
/ names: Category name or names to add. Names already present in #strong[A]; are ignored.
/ anchor: Existing category used as insertion point when #strong[Before]; or #strong[After]; is specified.

== Output argument

/ B: Categorical array with the same values as #strong[A]; and an updated category list.

== Description

#strong[addcats]; appends categories to a categorical array without changing the stored elements.

 For ordinal categorical arrays, the insertion position must be explicit because category order defines comparisons.


== Examples

Add a category at the end of the list.

``````matlab
A = categorical({'red','blue'}); B = addcats(A, 'green'); categories(B)
``````

Insert a category before an existing category.

``````matlab
A = categorical({'low','high'}, {'low','high'}, 'Ordinal', true); B = addcats(A, 'mid', 'Before', 'high'); categories(B)
``````


== See also

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:categories>)[categories];, #nlink(<categorical:removecats>)[removecats];, #nlink(<categorical:mergecats>)[mergecats];, #nlink(<categorical:reordercats>)[reordercats];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
