#import "nelson_help.typ": *

= varislock <memory_manager:varislock>

Checks if a variable is locked.

== Syntax

- #raw("state = varislock(scope, variable_name)");

== Input argument

/ scope: a string: 'global', 'base', 'caller', 'local'.
/ variable\_name: a string: variable name.

== Description

#strong[varislock]; returns true if #strong[variable\_name]; has been declared as locked variable and false otherwise.


== Example

``````matlab
y = 3;
varislock('local', 'y')
varlock('local', 'y')
varislock('local', 'y')
y = 4
varunlock('local', 'y')
varislock('local', 'y')
y = 4

``````


== See also

#nlink(<memory_manager:varlock>)[varlock];, #nlink(<memory_manager:varunlock>)[varunlock];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
