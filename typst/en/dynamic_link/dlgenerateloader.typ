#import "nelson_help.typ": *

= dlgenerateloader <dynamic_link:dlgenerateloader>

Generates loader.m file for C++ gateway.

== Syntax

- #raw("dlgenerateloader(destinationdir, libraryname)");

== Input argument

/ destinationdir: a string: destination directory where is generated the loader.m file.
/ libraryname: a string or a cell of string: external dynamic library names.

== Description

#strong[dlgenerateloader]; generates a 'loader.m' load external dynamic libraries.


== Example

See module skeleton for example

``````matlab

dlgenerateloader(tempdir(), {'c_dynamic_library_1',  'c_dynamic_library_2'});
text = fileread([tempdir(), 'loader.m'])
``````


== See also

#nlink(<dynamic_link:dlgenerateunloader>)[dlgenerateunloader];, #nlink(<dynamic_link:dlgenerategateway>)[dlgenerategateway];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
