#import "nelson_help.typ": *

= dlgeneratecleaner <dynamic_link:dlgeneratecleaner>

Generates cleaner.m file for C++ gateway.

== Syntax

- #raw("dlgeneratecleaner(destinationdir)");
- #raw("dlgeneratecleaner(destinationdir, files)");

== Input argument

/ destinationdir: a string: destination directory where is generated the cleaner.m file.
/ files: a string or a cell of string: list of files to delete.

== Description

#strong[dlgeneratecleaner]; generates a 'cleaner.m' to remove files.


== Example

See module skeleton for example

``````matlab

dlgeneratecleaner(tempdir());
text = fileread([tempdir(), 'cleaner.m'])
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
