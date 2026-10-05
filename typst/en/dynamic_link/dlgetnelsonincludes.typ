#import "nelson_help.typ": *

= dlgetnelsonincludes <dynamic_link:dlgetnelsonincludes>

Returns paths of Nelson include directories.

== Syntax

- #raw("C = dlgetnelsonincludes()");

== Output argument

/ C: a cell array of paths to various include directories used by Nelson modules

== Description

#strong[C \= dlgetnelsonincludes()]; returns a cell array of paths to various include directories used by Nelson modules.

 These paths are used internally for module development and building processes.


== Example

See module skeleton for example

``````matlab
dlgetnelsonincludes()
``````


== See also

#nlink(<dynamic_link:dlgetnelsonlibraries>)[dlgetnelsonlibraries];, #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
