#import "nelson_help.typ": *

= getmodules <modules_manager:getmodules>

Returns list of modules loaded in Nelson.

== Syntax

- #raw("modules_name = getmodules()");
- #raw("[modules_name, modules_root_path, modules_version, modules_protected] = getmodules()");

== Output argument

/ modules\_name: a cell of strings: modules names.
/ modules\_root\_path: a cell of strings: path of modules.
/ modules\_version: a cell of vector: \[major, minor, patch\].
/ modules\_protected: a vector of logical: true if module can be removed or not.

== Description

#strong[getmodules]; returns list of modules loaded in Nelson.

 all core's modules are protected and cannot removed during an nelson's session.


== Example

``````matlab
[modules_name, modules_root_path, modules_version, modules_protected] = getmodules()
``````


== See also

#nlink(<modules_manager:requiremodule>)[requiremodule];, #nlink(<modules_manager:ismodule>)[ismodule];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
