#import "nelson_help.typ": *

= isbuiltin <functions_manager:isbuiltin>

Check for the existence of a builtin.

== Syntax

- #raw("tf = isbuiltin(name)");

== Input argument

/ name: a string: builtin name.

== Output argument

/ tf: a logical: true if builtin exists.

== Description

#strong[isbuiltin]; checks for the existence of a builtin.


== Example

``````matlab
isbuiltin('isbuiltin')
isbuiltin('exist')
ismacro('exist')
``````


== See also

#nlink(<functions_manager:ismacro>)[ismacro];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
