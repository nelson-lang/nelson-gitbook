#import "nelson_help.typ": *

= movefile <files_folders_functions:movefile>

Move a file or folder.

== Syntax

- #raw("movefile(source, destination)");
- #raw("[status, msg] = movefile(source, destination)");
- #raw("movefile(source, destination, 'f')");

== Input argument

/ source: Source file, folder, or list.
/ destination: Destination path.

== Output argument

/ status: Logical success flag.
/ msg: Error message when the operation fails.

== Description

#strong[movefile]; copies the source to the destination and removes the source when the copy succeeds.


== Example

``````matlab
[status, msg] = movefile('source.txt', 'destination.txt')
``````


== See also

#nlink(<files_folders_functions:copyfile>)[copyfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
