#import "nelson_help.typ": *

= buildhelp <help_tools:buildhelp>

Build help of Nelson's modules.

== Syntax

- #raw("buildhelp()");
- #raw("buildhelp(module_name)");

== Input argument

/ module\_name: a string: module name (module must be loaded).

== Description

#strong[buildhelp]; generates help files.


== Example

``````matlab
buildhelp();
buildhelp('core');
``````


== See also

#nlink(<help_tools:doc>)[doc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.17.0], [Subchapters management added],
)

// Author: Allan CORNET
