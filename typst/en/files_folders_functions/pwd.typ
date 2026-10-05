#import "nelson_help.typ": *

= pwd <files_folders_functions:pwd>

Returns current directory.

== Syntax

- #raw("pwd()");
- #raw("r = pwd()");

== Output argument

/ r: a string: current directory.

== Description

Returns the current working directory.

 #strong[pwd()]; without input argument displays the current working directory.

 


== Example

``````matlab
r = pwd()
pwd()
``````


== See also

#nlink(<files_folders_functions:cd>)[cd];, #nlink(<files_folders_functions:dir>)[dir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
