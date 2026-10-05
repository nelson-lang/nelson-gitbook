#import "nelson_help.typ": *

= iscategorical <categorical:iscategorical>

Determine whether an array is categorical.

== Syntax

- #raw("tf = iscategorical(A)");

== Input argument

/ A: Input value.

== Output argument

/ tf: Logical scalar that is #strong[true]; when #strong[A]; is a categorical array.

== Description

#strong[iscategorical]; checks the storage type of its input without modifying the input.


== Example

Test a categorical array.

``````matlab
A = categorical({'red','blue'}); tf = iscategorical(A)
``````


== See also

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:isordinal>)[isordinal];, #nlink(<categorical:isprotected>)[isprotected];, #nlink(<categorical:isundefined>)[isundefined];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
