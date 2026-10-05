#import "nelson_help.typ": *

= removemodule <modules_manager:removemodule>

remove a module from Nelson.

== Syntax

- #raw("removemodule(module_short_name)");

== Input argument

/ module\_short\_name: a string: short module's name.

== Description

#strong[removemodule]; remove a module designed by his short name.

 all core's modules are protected and cannot removed during an nelson's session.


== Example

See module skeleton for example

``````matlab
ismodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
removemodule('module_skeleton')
ismodule('module_skeleton')
``````


== See also

#nlink(<modules_manager:ismodule>)[ismodule];, #nlink(<modules_manager:removemodule>)[addmodule];, #nlink(<modules_manager:getmodules>)[getmodules];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
