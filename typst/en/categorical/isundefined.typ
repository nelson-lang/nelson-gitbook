#import "nelson_help.typ": *

= isundefined <categorical:isundefined>

Find undefined categorical elements.

== Syntax

- #raw("tf = isundefined(A)");

== Input argument

/ A: Input array.

== Output argument

/ tf: Logical array with the same size as #strong[A];.

== Description

#strong[isundefined]; returns #strong[true]; for categorical elements that do not belong to any category.

 For noncategorical input, the result is a logical array of #strong[false]; values with the same size as the input.


== Example

Locate undefined categorical values.

``````matlab
A = categorical({'red','','blue'}); tf = isundefined(A)
``````


== See also

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:categories>)[categories];, #nlink(<categorical:setcats>)[setcats];, #nlink(<categorical:countcats>)[countcats];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
