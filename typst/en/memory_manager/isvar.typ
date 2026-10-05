#import "nelson_help.typ": *

= isvar <memory_manager:isvar>

Check for the existence of an variable.

== Syntax

- #raw("tf = isvar(varname)");
- #raw("tf = isvar(scope, varname)");

== Input argument

/ scope: a string: 'global', 'base', 'caller', 'local'.
/ varname: a string: variable name.

== Output argument

/ tf: a logical: true if varname exists.

== Description

#strong[isvar]; checks for the existence of an variable.


== Example

``````matlab
isvar('A')
A = 3
isvar('A')
isvar('global','B')
global B
isvar('global','B')
``````


== See also

#nlink(<core:exist>)[exist];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
