#import "nelson_help.typ": *

= subsindex <operators:subsindex>

Convert an object to an index vector.

== Syntax

- #raw("r = subsindex(O)");

== Input argument

/ O: a variable

== Description

If #strong[O]; is an object then#strong[subsindex]; is the overloading method that allows to convert this object to a valid indexing vector.


== See also

#nlink(<operators:subsref>)[subsref];, #nlink(<operators:subsasgn>)[subsasgn];, #nlink(<operators:colon>)[colon];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
