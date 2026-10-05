#import "nelson_help.typ": *

= buildhelpmd <help_tools:buildhelpmd>

Build help of Nelson's modules for GitBook.

== Syntax

- #raw("buildhelpmd(dirdest)");
- #raw("buildhelpmd(dirdest, module_name)");

== Input argument

/ dirdest: a string: a path destination.
/ module\_name: a string: module name (module must be loaded).

== Description

#strong[buildhelpmd]; generates help files for GitBook (markdown).


== Example

``````matlab
buildhelpmd(tempdir());
buildhelpmd(tempdir(), 'core');
``````


== See also

#nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:doc>)[doc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
