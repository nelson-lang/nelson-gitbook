#import "nelson_help.typ": *

= rmdir <files_folders_functions:rmdir>

Removes a directory.

== Syntax

- #raw("rmdir(dirname)");
- #raw("rmdir(dirname, 's')");
- #raw("res = rmdir(dirname)");
- #raw("res = rmdir(dirname, 's')");
- #raw("[res, msg] = rmdir(dirname)");
- #raw("[res, msg] = rmdir(dirname, 's')");

== Input argument

/ dirname: a string: file or directory name.
/ 's': a string: removes also subdirectories.

== Output argument

/ res: a logical: true or false.
/ msg: a string: error message or ' '.

== Description

#strong[res \= rmdir(dirname)]; removes the directory#strong[dirname];.

 If the directory is not empty, you must use the s argument.


== Example

``````matlab

mkdir([tempdir(), 'test'])
rmdir([tempdir(), 'test'])

``````


== See also

#nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:mkdir>)[mkdir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
