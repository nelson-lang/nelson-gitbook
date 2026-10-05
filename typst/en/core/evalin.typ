#import "nelson_help.typ": *

= evalin <core:evalin>

Evaluate Nelson code in string in an specified scope.

== Syntax

- #raw("evalin(scope, str)");
- #raw("[r1, ... rn] = evalin(scope, str)");

== Input argument

/ scope: a string: 'base' or 'caller'.
/ str: a string: Nelson instruction to execute

== Output argument

/ \[r1, ... rn\]: results: output variables

== Description

#strong[eval]; executes Nelson instructions given in a string in 'base' or 'caller' scope.


== Example

``````matlab
evalin('base', 'B=4')
``````


== See also

#nlink(<core:eval>)[eval];, #nlink(<memory_manager:acquirevar>)[acquirevar];, #nlink(<core:execstr>)[execstr];, #nlink(<core:evalc>)[evalc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
