#import "nelson_help.typ": *

= assignin <memory_manager:assignin>

Assignin value to a variable in a specified variables scope.

== Syntax

- #raw("assignin(scope, variable_name, variable_value)");

== Input argument

/ scope: a string: 'global', 'base', 'caller', 'local'.
/ variable\_name: a string: the name of variable destination.
/ variable\_value: a variable to assign.

== Description

#strong[assignin]; assign value to a variable in a specified variables scope.


== Example

``````matlab
assignin('base', 'X', 33);
Y = acquirevar('base', 'X');
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
