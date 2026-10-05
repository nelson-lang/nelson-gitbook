#import "nelson_help.typ": *

= isordinal <categorical:isordinal>

Determine whether a categorical array is ordinal.

== Syntax

- #raw("tf = isordinal(A)");

== Input argument

/ A: Input value.

== Output argument

/ tf: Logical scalar that is #strong[true]; for ordinal categorical arrays.

== Description

#strong[isordinal]; returns #strong[true]; when #strong[A]; is categorical and category order is meaningful.

 Ordinal arrays support relational comparisons based on category order.


== Example

Create an ordinal array and test it.

``````matlab
A = categorical({'low','high'}, {'low','high'}, 'Ordinal', true); tf = isordinal(A)
``````


== See also

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:isprotected>)[isprotected];, #nlink(<categorical:reordercats>)[reordercats];, #nlink(<categorical:categories>)[categories];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
