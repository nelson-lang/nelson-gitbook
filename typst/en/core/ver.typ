#import "nelson_help.typ": *

= ver <core:ver>

Version information.

== Syntax

- #raw("ver");
- #raw("ver(name)");
- #raw("v = ver()");
- #raw("v = ver(name)");

== Input argument

/ name: a string scalar or character array: product name.

== Output argument

/ v: a struct array with fields #strong[Name];, #strong[Version];, #strong[Release]; and #strong[Date];.

== Description

#strong[ver]; displays version information.

 #strong[v \= ver()]; returns the version information in a structure array with the fields #strong[Name];, #strong[Version];, #strong[Release]; and #strong[Date];.

 #strong[ver(name)]; restricts the information to the product #strong[name]; (an empty result is returned when it is not installed).


== Example

``````matlab
ver
v = ver('Nelson')
``````


== See also

#nlink(<core:version>)[version];, #nlink(<core:verLessThan>)[verLessThan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
