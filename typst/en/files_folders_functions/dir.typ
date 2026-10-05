#import "nelson_help.typ": *

= dir <files_folders_functions:dir>

Returns file list.

== Syntax

- #raw("dir");
- #raw("dir(dirname)");
- #raw("dir(dirname, '-s')");
- #raw("res =dir()");
- #raw("res = dir(dirname)");
- #raw("res = dir(dirname, '-s')");

== Input argument

/ dirname: a string: file or directory name.
/ '-s': a string: scan also subdirectories.

== Output argument

/ res: a struct with fields: name, date, bytes, isdir, datenum.

== Description

#strong[dir]; displays the list of files and folders in the current folder.

 \* (wildcard) is supported in filename and path name.


== Example

``````matlab
res = dir(nelsonroot())
res = dir(nelsonroot(), '-s')res = dir([nelsonroot(),'/*.m'], '-s')
``````


== See also

#nlink(<files_folders_functions:ls>)[ls];, #nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:isfile>)[isfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
