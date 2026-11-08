#import "../nelson_help.typ": *

= dlgetnflowlibraries <nflow_blocks:plugin_development.dlgetnflowlibraries>

Returns the libraries a native nflow block plugin must link against.

== Syntax

- #raw("C = dlgetnflowlibraries()");

== Output argument

/ C: a cell array of library paths without extension. dlgeneratemake appends the platform suffix (.lib on Windows, .so or .dylib otherwise).

== Description

#strong[C \= dlgetnflowlibraries()]; returns the libraries needed to link a native nflow block plugin.

 A plugin calls the simulation helpers (#strong[getInput];, #strong[getState];, #strong[setOutput];, #strong[updated];, and others), which are compiled into #strong[nlsNflow\_blocks];. Linking that single library is enough; its own Nelson dependencies are resolved at load time.

 This function is typically passed to #strong[dlgeneratemake];.


== Example

``````matlab
dlgetnflowlibraries()
``````


== See also

#nlink(<nflow_blocks:plugin_development.dlgetnflowincludes>)[dlgetnflowincludes];, #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];, #nlink(<dynamic_link:dlmake>)[dlmake];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
