#import "nelson_help.typ": *

= isglobal <memory_manager:isglobal>

Checks if a variable is global.

== Syntax

- #raw("state = isglobal(variable_name)");

== Input argument

/ variable\_name: a string: variable name.

== Output argument

/ state: a logical: true if variable is global.

== Description

#strong[isglobal]; returns true if #strong[variable\_name]; has been declared as global variable and false otherwise.


== Example

``````matlab
y = 3;
isglobal y
global b
b = 3
isglobal b
clear global b
isglobal b
``````


== See also

#nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];, #nlink(<memory_manager:global>)[global];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
