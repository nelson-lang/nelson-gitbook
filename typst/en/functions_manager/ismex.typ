#import "nelson_help.typ": *

= ismex <functions_manager:ismex>

Check for the existence of a mex function.

== Syntax

- #raw("tf = ismex(name)");

== Input argument

/ name: a string: mex function name.

== Output argument

/ tf: a logical: true if mex exists.

== Description

#strong[ismex]; checks for the existence of a mex function.


== Example

``````matlab
ismex('isbuiltin')
ismex('exist')
ismex('exist')
``````


== See also

#nlink(<functions_manager:isbuiltin>)[isbuiltin];, #nlink(<functions_manager:ismacro>)[ismacro];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
