#import "nelson_help.typ": *

= setcats <categorical:setcats>

Set the category list of a categorical array.

== Syntax

- #raw("B = setcats(A, newCategories)");

== Input argument

/ A: Input categorical array.
/ newCategories: Complete replacement category list.

== Output argument

/ B: Categorical array using exactly the categories listed in #strong[newCategories];.

== Description

#strong[setcats]; replaces the category list of a categorical array.

 Elements whose previous category is not present in #strong[newCategories]; become undefined. Categories in #strong[newCategories]; that were not previously present are added as unused categories.


== Examples

Keep only selected categories.

``````matlab
A = categorical({'red','blue','green'}); B = setcats(A, {'red','blue'}); isundefined(B)
``````

Add an unused category through a complete category list.

``````matlab
A = categorical({'red','blue'}); B = setcats(A, {'red','blue','green'}); categories(B)
``````


== See also

#nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:removecats>)[removecats];, #nlink(<categorical:isundefined>)[isundefined];, #nlink(<categorical:categories>)[categories];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
