#import "nelson_help.typ": *

= NFlow.librarypaths <nflow_engine:NFlow.librarypaths>

Return the nflow block library search paths.

== Syntax

- #raw("paths = NFlow.librarypaths()");

== Output argument

/ paths: the current nflow library search paths, a cell array of character vectors.

== Description

#strong[NFlow.librarypaths]; returns the directories currently scanned for external nflow block libraries. The list is the one shared by #strong[sim];, code generation and the editor, and is changed with #strong[NFlow.addlibrarypath]; and #strong[NFlow.rmlibrarypath];.


== Example

List the registered library search paths.

``````matlab
NFlow.librarypaths()
``````


== See also

#nlink(<nflow_engine:NFlow.addlibrarypath>)[NFlow.addlibrarypath];, #nlink(<nflow_engine:NFlow.rmlibrarypath>)[NFlow.rmlibrarypath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
