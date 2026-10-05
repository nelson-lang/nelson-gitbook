#import "nelson_help.typ": *

= nmm\_build\_loader <modules_manager:nmm_build_loader>

helper's function to build main loader.m of an external module

== Syntax

- #raw("nmm_build_loader(module_short_name, module_root_path)");

== Input argument

/ module\_short\_name: a string: short module's name.
/ module\_root\_path: a string: path of the module named 'module\_short\_name'.

== Description

#strong[nmm\_build\_loader]; generates main loader.m of an external module.


== Example

See module skeleton for example

``````matlab
% see builder.m
``````


== See also

#nlink(<modules_manager:addmodule>)[addmodule];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
