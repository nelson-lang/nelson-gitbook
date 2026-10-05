#import "nelson_help.typ": *

= varunlock <memory_manager:varunlock>

Unlocks a variable.

== Syntax

- #raw("varunlock(scope, variable_name)");

== Input argument

/ scope: a string: 'global', 'base', 'caller', 'local'.
/ variable\_name: a string: variable name.

== Description

#strong[varunlock]; unlocks a variable.


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

#nlink(<memory_manager:varislock>)[varislock];, #nlink(<memory_manager:varlock>)[varlock];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
