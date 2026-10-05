#import "nelson_help.typ": *

= isunicodesupported <core:isunicodesupported>

Detect whether the current terminal supports Unicode.

== Syntax

- #raw("tf = isunicodesupported()");

== Output argument

/ tf: a logical: true or false.

== Description

#strong[isunicodesupported];: returns if current terminal supports Unicode.

 value returned can be overloaded if environment variable 'NELSON\_TERM\_IS\_UNICODE\_SUPPORTED' is 'TRUE'


== Example

``````matlab
isunicodesupported()
``````


== See also

#nlink(<engine:getnelsonmode>)[getnelsonmode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
