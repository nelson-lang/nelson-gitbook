#import "nelson_help.typ": *

= dlgenerateunloader <dynamic_link:dlgenerateunloader>

Generates unloader.m file for C++ gateway.

== Syntax

- #raw("dlgenerateunloader(destinationdir, libraryname)");

== Input argument

/ destinationdir: a string: destination directory where is generated the unloader.m file.
/ libraryname: a string or a cell of string: external dynamic library names.

== Description

#strong[dlgenerateunloader]; generates a 'unloader.m' unload external dynamic libraries.


== Example

See module skeleton for example

``````matlab

dlgenerateunloader(tempdir(), {'c_dynamic_library_1',  'c_dynamic_library_2'});
text = fileread([tempdir(), 'unloader.m'])
``````


== See also

#nlink(<dynamic_link:dlgenerateloader>)[dlgenerateloader];, #nlink(<dynamic_link:dlgenerategateway>)[dlgenerategateway];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
