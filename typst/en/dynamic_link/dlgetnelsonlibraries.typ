#import "nelson_help.typ": *

= dlgetnelsonlibraries <dynamic_link:dlgetnelsonlibraries>

Returns paths to Nelson library files.

== Syntax

- #raw("C = dlgetnelsonlibraries()");

== Output argument

/ C: a cell array of paths to various library directories used by Nelson modules

== Description

#strong[C \= dlgetnelsonlibraries()]; returns a cell array of paths to various library directories used by Nelson modules.

 These paths are used internally for module development and building processes.


== Example

See module skeleton for example

``````matlab
dlgetnelsonlibraries()
``````


== See also

#nlink(<dynamic_link:dlgetnelsonincludes>)[dlgetnelsonincludes];, #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
