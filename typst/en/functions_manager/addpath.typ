#import "nelson_help.typ": *

= addpath <functions_manager:addpath>

Add directories to functions search path.

== Syntax

- #raw("addpath(dirname)");
- #raw("addpath(dirname, ..., dirname)");
- #raw("addpath(dirname, ..., dirname, '-begin')");
- #raw("addpath(dirname, ..., dirname, '-end')");
- #raw("addpath(dirname, ..., dirname, '-frozen')");
- #raw("previous = addpath(dirname)");
- #raw("previous = addpath(dirname, ..., dirname)");
- #raw("previous = addpath(dirname, ..., dirname, '-begin')");
- #raw("previous = addpath(dirname, ..., dirname, '-end')");

== Input argument

/ dirname: a string: a directory
/ '-end' or '-begin': append dirname at the end or begin of the list.
/ '-frozen': disables folder change detection for the folders being added or modified.

== Output argument

/ previous: returns previous path before adding

== Description

#strong[addpath]; add directories to search path.

 It is also possible to add lists of directory names separated by pathsep.

 Non-existent path will not be added and a warning will be issued.

 files watchers is disabled for internal modules.


== Example

``````matlab
path()
addpath(tempdir())
path
rmpath(tempdir())
path
``````


== See also

#nlink(<functions_manager:path>)[path];, #nlink(<functions_manager:rmpath>)[rmpath];, #nlink(<functions_manager:restoredefaultpath>)[restoredefaultpath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
