#import "nelson_help.typ": *

= nmm\_build\_help <modules_manager:nmm_build_help>

helper's function to build help of an external module

== Syntax

- #raw("nmm_build_help(module_short_name, module_root_path)");

== Input argument

/ module\_short\_name: a string: short module's name.
/ module\_root\_path: a string: path of the module named 'module\_short\_name'.

== Description

#strong[nmm\_build\_help]; generates help of an external module.


== Example

See module skeleton for example

``````matlab
% see builder.m
``````


== See also

#nlink(<help_tools:buildhelp>)[buildhelp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
