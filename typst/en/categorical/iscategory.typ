#import "nelson_help.typ": *

= iscategory <categorical:iscategory>

Determine whether names are categories.

== Syntax

- #raw("tf = iscategory(A, names)");

== Input argument

/ A: Input categorical array.
/ names: Category name, string array, cell array of character vectors, or pattern to test.

== Output argument

/ tf: Logical result with the same size as #strong[names];, except for pattern input where a scalar result is returned.

== Description

#strong[iscategory]; tests whether requested names are present in the category list of #strong[A];.

 Undefined elements do not create a category and are not matched by this function.


== Example

Check several category names.

``````matlab
A = categorical({'red','blue'}); tf = iscategory(A, {'red','green'})
``````


== See also

#nlink(<categorical:categories>)[categories];, #nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:removecats>)[removecats];, #nlink(<categorical:isundefined>)[isundefined];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
