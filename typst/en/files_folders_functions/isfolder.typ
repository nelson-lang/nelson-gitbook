#import "nelson_help.typ": *

= isfolder <files_folders_functions:isfolder>

Returns true is the input argument is an directory.

== Syntax

- #raw("r = isfolder(dirname)");

== Input argument

/ dirname: a string: directory name to check.

== Output argument

/ r: a logical: true if it is an directory.

== Description

#strong[isfolder(dirname)]; returns #strong[true]; if #strong[dirname]; is a directory.


== Example

``````matlab
isdir(nelsonroot())
isdir([nelsonroot(), '/not_exist_dir'])
``````


== See also

#nlink(<files_folders_functions:mkdir>)[mkdir];, #nlink(<files_folders_functions:isfile>)[isfile];, #nlink(<files_folders_functions:isdir>)[isdir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
