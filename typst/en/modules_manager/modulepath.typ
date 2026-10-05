#import "nelson_help.typ": *

= modulepath <modules_manager:modulepath>

Returns path of a module.

== Syntax

- #raw("p = modulepath(module_short_name)");
- #raw("p = modulepath(module_short_name, option)");

== Input argument

/ module\_short\_name or 'nelson': a string: short module's name. module must exist in nelson session.
/ option: a string: 'etc', 'bin', 'root', 'builtin', 'tests'.

== Output argument

/ p: a string: path or subpath of the module.

== Description

#strong[modulepath]; is an helper's function to return module root path or a subdirectory.

 #strong[modulepath('nelson')]; is equivalent to #strong[modulepath('nelson', 'root')];

 #strong[modulepath('nelson', 'bin')]; return path of nelson's executables.

 #strong[modulepath('nelson', 'builtin')]; returns path of nelson's dynamic libraries.


== Example

``````matlab
modulepath('core')
modulepath('core', 'root')
modulepath('core', 'etc')
modulepath('core', 'bin')
modulepath('core', 'builtin')
modulepath('core', 'tests')
modulepath('nelson', 'root')
modulepath('nelson', 'bin')
modulepath('nelson', 'builtin')

``````


== See also

#nlink(<modules_manager:requiremodule>)[requiremodule];, #nlink(<modules_manager:getmodules>)[getmodules];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
