#import "nelson_help.typ": *

= isfile <files_folders_functions:isfile>

Returns true is the input argument is a file.

== Syntax

- #raw("r = isfile(name)");

== Input argument

/ name: a string: filename to check.

== Output argument

/ r: a logical: true if it is a file.

== Description

#strong[isfile(name)]; returns #strong[true]; if #strong[name]; is a file.


== Example

``````matlab
isfile(nelsonroot())
isfile([nelsonroot(), '/etc/finish.m'])
``````


== See also

#nlink(<files_folders_functions:mkdir>)[mkdir];, #nlink(<files_folders_functions:isfolder>)[isfolder];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.4.0], [input arguments support scalar string array type],
)

// Author: Allan CORNET
