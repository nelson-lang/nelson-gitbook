#import "nelson_help.typ": *

= cd <files_folders_functions:cd>

Changes Nelson current directory.

== Syntax

- #raw("cd(dirname)");
- #raw("cd dirname");
- #raw("previous_path = cd(dirname)");
- #raw("cd ..");
- #raw("cd");

== Input argument

/ dirname: a string: directory name to move.

== Output argument

/ previous\_path: a string: previous directory.

== Description

Changes the current working directory to dirname.

 #strong[a \= cd()]; without input argument returns the current working directory.

 #strong[cd()]; without input argument displays the current working directory.

 


== Example

``````matlab
previous = cd(tempdir())
cd
cd ..

``````


== See also

#nlink(<files_folders_functions:mkdir>)[mkdir];, #nlink(<files_folders_functions:pwd>)[pwd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
