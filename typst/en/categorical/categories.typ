#import "nelson_help.typ": *

= categories <categorical:categories>

List categories of a categorical array.

== Syntax

- #raw("names = categories(A)");
- #raw("names = categories(A, 'OutputType', type)");

== Input argument

/ A: Input categorical array.
/ type: Output representation: #strong['char'];, #strong['string'];, or #strong['categorical'];.

== Output argument

/ names: Category names in category order.

== Description

#strong[categories]; returns the category list attached to a categorical array. Undefined elements are not categories.

 The default output is a cell array of character vectors.


== Examples

Return the category names.

``````matlab
A = categorical({'red','blue','red'}); names = categories(A)
``````

Return the category names as strings.

``````matlab
A = categorical({'small','large'}); names = categories(A, 'OutputType', 'string')
``````


== See also

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:renamecats>)[renamecats];, #nlink(<categorical:reordercats>)[reordercats];, #nlink(<categorical:iscategory>)[iscategory];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
