#import "nelson_help.typ": *

= varlock <memory_manager:varlock>

Locks a variable.

== Syntax

- #raw("varlock(scope, variable_name)");

== Input argument

/ scope: a string: 'global', 'base', 'caller', 'local'.
/ variable\_name: a string: variable name.

== Description

#strong[varlock]; locks a variable.

 Locked variables cannot be killed.

 #strong[ans]; variable cannot be locked.


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
varlock('local', 'ans')
varislock('local', 'ans')


``````


== See also

#nlink(<memory_manager:varislock>)[varislock];, #nlink(<memory_manager:varunlock>)[varunlock];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
