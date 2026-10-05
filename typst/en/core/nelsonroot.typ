#import "nelson_help.typ": *

= nelsonroot <core:nelsonroot>

Returns Nelson's root folder.

== Syntax

- #raw("nelson_path = nelsonroot");

== Output argument

/ nelson\_path: a string: the root folder of Nelson.

== Description

#strong[nelsonroot]; returns the root folder of Nelson.


== Example

``````matlab
pwd
cd(nelsonroot)
pwd
``````


== See also

#nlink(<files_folders_functions:pwd>)[pwd];, #nlink(<files_folders_functions:cd>)[cd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
