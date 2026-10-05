#import "nelson_help.typ": *

= ismodule <modules_manager:ismodule>

Checks if a module is loaded.

== Syntax

- #raw("state = ismodule(module_short_name)");
- #raw("state = ismodule(module_short_name, 'isprotected')");

== Input argument

/ module\_short\_name: a string: short module's name to test.
/ 'isprotected': check module isprotected (ie. internal module).

== Output argument

/ state: a logical.

== Description

#strong[ismodule]; returns #strong[true]; if module is loaded otherwise #strong[false];.


== Example

``````matlab
ismodule('core')
ismodule('mymodule')
``````


== See also

#nlink(<modules_manager:requiremodule>)[requiremodule];, #nlink(<modules_manager:getmodules>)[getmodules];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.11.0], ['isprotected' second argument.],
)

// Author: Allan CORNET
