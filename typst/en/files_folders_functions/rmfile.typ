#import "nelson_help.typ": *

= rmfile <files_folders_functions:rmfile>

Removes a file.

== Syntax

- #raw("rmfile(filename)");
- #raw("res = rmfile(filename)");
- #raw("[res, msg] = rmfile(filename)");
- #raw("[res, msg] = rmfile(filename)");

== Input argument

/ filename: a string: file name.

== Output argument

/ res: a logical: true or false.
/ msg: a string: error message or ' '.

== Description

#strong[res \= rmfile(filename)]; removes the file #strong[filename];.


== Example

``````matlab
fd = fopen([tempdir(), 'test_rmfile.txt'], 'wt')
fclose(fd)
isfile([tempdir(), 'test_rmfile.txt'])
rmfile([tempdir(), 'test_rmfile.txt'])
isfile([tempdir(), 'test_rmfile.txt'])

``````


== See also

#nlink(<files_folders_functions:isfile>)[isfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
