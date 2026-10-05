#import "nelson_help.typ": *

= addmodule <modules_manager:addmodule>

Add module to Nelson.

== Syntax

- #raw("addmodule(module_path, module_short_name)");

== Input argument

/ module\_path: a string: root path of a module. path must exist.
/ module\_short\_name: a string: short module's name. This name must not be already used.

== Description

#strong[addmodule]; registers a new module designed by his path and short name.


== Example

See module skeleton for example

``````matlab
ismodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
removemodule('module_skeleton')
``````


== See also

#nlink(<modules_manager:ismodule>)[ismodule];, #nlink(<modules_manager:removemodule>)[removemodule];, #nlink(<modules_manager:getmodules>)[getmodules];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
