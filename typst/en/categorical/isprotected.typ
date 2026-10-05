#import "nelson_help.typ": *

= isprotected <categorical:isprotected>

Determine whether a categorical array is protected.

== Syntax

- #raw("tf = isprotected(A)");

== Input argument

/ A: Input value.

== Output argument

/ tf: Logical scalar that is #strong[true]; for protected categorical arrays.

== Description

#strong[isprotected]; reports whether a categorical array prevents implicit category expansion during assignment.

 Ordinal categorical arrays are protected automatically.


== Example

Create a protected categorical array and test it.

``````matlab
A = categorical({'low','high'}, {'low','high'}, 'Protected', true); tf = isprotected(A)
``````


== See also

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:isordinal>)[isordinal];, #nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:setcats>)[setcats];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
