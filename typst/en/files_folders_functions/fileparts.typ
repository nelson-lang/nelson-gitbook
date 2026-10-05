#import "nelson_help.typ": *

= fileparts <files_folders_functions:fileparts>

Returns the path, filename and extension of a file path.

== Syntax

- #raw("[p, f, e] = fileparts(fullpath)");
- #raw("p = fileparts(fullpath, 'path')");
- #raw("f = fileparts(fullpath, 'filename')");
- #raw("e = fileparts(fullpath, 'extension')");

== Input argument

/ fullpath: a string: file or directory name.

== Output argument

/ p: a string: path of the directory fullpath.
/ f: a string: file name without extension of fullpath.
/ e: a string: extension name of fullpath.

== Description

#strong[\[p ,f, e\] \= fileparts(fullpath)]; splits in its three parts: path, filename, extension including the dot.


== Example

``````matlab
[p, f, e] = fileparts([nelsonroot(), '/etc/finish.m'])
p = fileparts([nelsonroot(), '/etc/finish.m'], 'path')
f = fileparts([nelsonroot(), '/etc/finish.m'], 'filename')
e = fileparts([nelsonroot(), '/etc/finish.m'], 'extension')
``````


== See also

#nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:isfile>)[isfile];, #nlink(<files_folders_functions:pathsep>)[pathsep];, #nlink(<files_folders_functions:filesep>)[filesep];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
