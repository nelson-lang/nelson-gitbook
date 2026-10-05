#import "nelson_help.typ": *

= exist <core:exist>

Check for the existence.

== Syntax

- #raw("res = exist(name)");
- #raw("res = exist(name, category)");

== Input argument

/ name: a string: name of variable, function, file, directory, or class.
/ category: a string: 'var', 'builtin', 'file', 'dir', or 'class'.

== Output argument

/ res: a integer value.

== Description

#strong[exists]; checks for the existence of variable, builtin, file, directory, or class.

 #strong[exists]; returns:

 #strong[0]; does not exist

 #strong[1]; is an variable

 #strong[2]; is a file

 #strong[3]; is a mex function

 #strong[5]; is a builtin or function

 #strong[7]; is a directory

 #strong[8]; is a class


== Example

``````matlab
exist('fileread')
fileread = 3;
exist('fileread')
clear fileread
exist('fileread')

``````


== See also

#nlink(<functions_manager:isbuiltin>)[isbuiltin];, #nlink(<functions_manager:ismacro>)[ismacro];, #nlink(<files_folders_functions:isfile>)[isfile];, #nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<memory_manager:isvar>)[isvar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
