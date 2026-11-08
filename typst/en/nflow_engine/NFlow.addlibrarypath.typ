#import "nelson_help.typ": *

= NFlow.addlibrarypath <nflow_engine:NFlow.addlibrarypath>

Add an nflow block library search path.

== Syntax

- #raw("NFlow.addlibrarypath(folder)");
- #raw("paths = NFlow.addlibrarypath(folder)");

== Input argument

/ folder: a directory that holds one or more library sub-folders, each with a #strong[library.json]; and its native library.

== Output argument

/ paths: the updated list of search paths, a cell array of character vectors.

== Description

#strong[NFlow.addlibrarypath]; adds #strong[folder]; to the nflow block library search paths and scans it. Every sub-folder that holds a #strong[library.json]; next to its native library is loaded, so its blocks become available to #strong[sim];, code generation and the editor without restarting Nelson.

 Adding a folder that is already registered has no effect. An error is raised when #strong[folder]; does not exist.


== Example

Build the cumprod example plugin and register its library folder.

``````matlab
run([modulepath('nflow_gui'), '/examples/libraries/cumprod/builder.m']);
NFlow.addlibrarypath([modulepath('nflow_gui'), '/examples/libraries']);
NFlow.librarypaths()
``````


== See also

#nlink(<nflow_engine:NFlow.librarypaths>)[NFlow.librarypaths];, #nlink(<nflow_engine:NFlow.rmlibrarypath>)[NFlow.rmlibrarypath];, #nlink(<nflow_engine:sim>)[sim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
