#import "nelson_help.typ": *

= mergecats <categorical:mergecats>

Merge categories in a categorical array.

== Syntax

- #raw("B = mergecats(A, oldCategories)");
- #raw("B = mergecats(A, oldCategories, newCategory)");

== Input argument

/ A: Input categorical array.
/ oldCategories: Categories whose elements are merged.
/ newCategory: Name of the merged category. If omitted, the first category in #strong[oldCategories]; is kept.

== Output argument

/ B: Categorical array with merged category codes.

== Description

#strong[mergecats]; replaces multiple categories by a single category and remaps all matching elements.

 Categories not listed in #strong[oldCategories]; keep their values and relative order.


== Example

Merge several categories into one category.

``````matlab
A = categorical({'red','blue','green'}); B = mergecats(A, {'blue','green'}, 'other'); categories(B)
``````


== See also

#nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:removecats>)[removecats];, #nlink(<categorical:renamecats>)[renamecats];, #nlink(<categorical:setcats>)[setcats];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
