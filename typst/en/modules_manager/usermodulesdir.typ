#import "nelson_help.typ": *

= usermodulesdir <modules_manager:usermodulesdir>

Returns path where external modules are saved.

== Syntax

- #raw("p = usermodulesdir()");

== Output argument

/ p: a string: path where are external modules.

== Description

#strong[usermodulesdir]; is an helper's function to return path where users modules are saved.

 This path can be overloaded by defining NELSON\_EXTERNAL\_MODULES\_PATH environment variable on your system.


== Example

``````matlab
usermodulesdir()
``````


== See also

#nlink(<modules_manager:toolboxdir>)[toolboxdir];, #nlink(<modules_manager:getmodules>)[getmodules];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
