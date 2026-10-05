#import "nelson_help.typ": *

= toolboxdir <modules_manager:toolboxdir>

Returns path of a module.

== Syntax

- #raw("p = toolboxdir(module_short_name)");

== Input argument

/ module\_short\_name: a string: short module's name.

== Output argument

/ p: a string: path of the module.

== Description

#strong[toolboxdir]; is an helper's function to return module root path.


== Example

``````matlab
toolboxdir('core')
``````


== See also

#nlink(<modules_manager:modulepath>)[modulepath];, #nlink(<modules_manager:getmodules>)[getmodules];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
