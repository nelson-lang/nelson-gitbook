#import "nelson_help.typ": *

= colon <operators:colon>

colon operator ':'.

== Syntax

- #raw("R = colon(base, limit)");
- #raw("R = colon(base, increment, limit");

== Input argument

/ base: a variable
/ limit: a variable
/ increment: a variable (optional)

== Output argument

/ C: result

== Description

#strong[colon]; creates vectors. It is an useful function for loop, extraction and insertion.

 #strong[colon(base, limit)]; is equivalent to #strong[base:limit];

 #strong[colon(base, increment, limit)]; is equivalent to #strong[base:increment:limit];


== Examples

``````matlab
1:0.5:4
``````

``````matlab
A = 1:6
B = 1:4:12
C = rand(3, 4)
C(:)
C(:, 3)
C(2, :)
C(:, 1, 1)
C(:) = rand(3, 4)

``````


== See also

#nlink(<operators:subsref>)[subsref];, #nlink(<operators:subsindex>)[subsindex];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
