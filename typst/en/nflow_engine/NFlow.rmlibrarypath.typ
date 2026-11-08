#import "nelson_help.typ": *

= NFlow.rmlibrarypath <nflow_engine:NFlow.rmlibrarypath>

Remove an nflow block library search path.

== Syntax

- #raw("NFlow.rmlibrarypath(folder)");
- #raw("paths = NFlow.rmlibrarypath(folder)");

== Input argument

/ folder: a directory previously added with #strong[NFlow.addlibrarypath];.

== Output argument

/ paths: the updated list of search paths, a cell array of character vectors.

== Description

#strong[NFlow.rmlibrarypath]; removes #strong[folder]; from the nflow block library search paths and rescans the remaining ones. Removing a folder that is not registered has no effect.


== Example

Register then remove a library folder.

``````matlab
folder = [modulepath('nflow_gui'), '/examples/libraries'];
NFlow.addlibrarypath(folder);
NFlow.rmlibrarypath(folder)
``````


== See also

#nlink(<nflow_engine:NFlow.addlibrarypath>)[NFlow.addlibrarypath];, #nlink(<nflow_engine:NFlow.librarypaths>)[NFlow.librarypaths];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
