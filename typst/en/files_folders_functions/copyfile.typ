#import "nelson_help.typ": *

= copyfile <files_folders_functions:copyfile>

Copy files or folder.

== Syntax

- #raw("copyfile(source, destination)");
- #raw("[status, msg] = copyfile(source, destination)");
- #raw("[status, msg] = copyfile(source, destination, 'f')");
- #raw("[status, msg, msgID] = copyfile(source, destination)");
- #raw("[status, msg, msgID] = copyfile(source, destination, 'f')");

== Input argument

/ source: a string: file or directory.
/ destination: a string: file or directory.
/ 'f' or 'F': force copy even destination is not writable.

== Output argument

/ status: a logical true or false
/ msg: a string: error message
/ msgID: a string: message identifier

== Description

#strong[copyfile(source , destination)]; copies the file or directory ,#strong[source]; (and subdirectories) to the file or directory,#strong[destination];.

 If #strong[source]; is a directory,#strong[destination]; can not be a file.

 #strong[copyfile]; replaces existing files without warning.


== Example

``````matlab
copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
[status, msg] = copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
``````


== See also

#nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:rmfile>)[rmfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.4.0], [input arguments support scalar string array type],
  [2.0.0], [msgID output argument added.],
)

// Author: Allan CORNET
