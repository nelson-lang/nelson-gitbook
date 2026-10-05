#import "nelson_help.typ": *

= ismacro <functions_manager:ismacro>

Check for the existence of a macro (function).

== Syntax

- #raw("tf = ismacro(name)");

== Input argument

/ name: a string: macro name.

== Output argument

/ tf: a logical: true if macro exists.

== Description

#strong[ismacro]; checks for the existence of a macro.


== Example

``````matlab
ismacro('isbuiltin')
ismacro('exist')
``````


== See also

#nlink(<functions_manager:isbuiltin>)[isbuiltin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
