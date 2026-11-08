#import "../nelson_help.typ": *

= dlgetnflowincludes <nflow_blocks:plugin_development.dlgetnflowincludes>

Returns the include directories required to build a native nflow block plugin.

== Syntax

- #raw("C = dlgetnflowincludes()");

== Output argument

/ C: a cell array of include directory paths: the nflow\_blocks SDK headers followed by the Nelson SDK include directories.

== Description

#strong[C \= dlgetnflowincludes()]; returns the include directories needed to build a native nflow block plugin.

 The result lists the #strong[nflow\_blocks]; public headers (#strong[BlockPlugin.h];, #strong[SimEngineTypes.hpp];, and others), then the Nelson SDK include directories. The Nelson directories provide #strong[nlohmann\/json.hpp];, which is included by #strong[SimEngineTypes.hpp];.

 The paths are resolved whether Nelson runs from its source tree or from an installation.

 This function is typically passed to #strong[dlgeneratemake];.


== Example

``````matlab
dlgetnflowincludes()
``````


== See also

#nlink(<nflow_blocks:plugin_development.dlgetnflowlibraries>)[dlgetnflowlibraries];, #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];, #nlink(<dynamic_link:dlmake>)[dlmake];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
