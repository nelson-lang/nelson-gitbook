#import "nelson_help.typ": *

= acquirevar <memory_manager:acquirevar>

Acquires variable value from a specified variables scope.

== Syntax

- #raw("value = acquirevar(scope, variable_name)");

== Input argument

/ scope: a string: 'global', 'base', 'caller', 'local'.
/ variable\_name: a string: the name of symbol to search.

== Output argument

/ value: value of the variable searched.

== Description

#strong[acquirevar]; search a symbol in a specific scope and copy the value in current scope.


== Example

``````matlab
 Y = 'variable in base scope';
function myfun()
  disp(acquirevar('base', 'Y')
end
myfun()
``````


== See also

#nlink(<memory_manager:assignin>)[assignin];, #nlink(<memory_manager:who>)[who];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
