#import "nelson_help.typ": *

= requiremodule <modules_manager:requiremodule>

Returns an error if module is not loaded in Nelson.

== Syntax

- #raw("requiremodule(module_short_name)");

== Input argument

/ module\_short\_name: a string: short module's name.

== Description

#strong[requiremodule]; returns an error if desired module is not loaded.

 This function is useful to verify a dependency on another module.


== Example

See module skeleton for example

``````matlab
ismodule('module_skeleton')
requiremodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
requiremodule('module_skeleton')
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
