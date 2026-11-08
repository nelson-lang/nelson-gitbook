#import "nelson_help.typ": *

= stdin <stream_manager:stdin>

File identifier of the standard input stream.

== Syntax

- #raw("fd = stdin()");

== Output argument

/ fd: the value #strong[0];.

== Description

#strong[fd \= stdin()]; returns #strong[0];, the file identifier of the standard input stream.


== Example

``````matlab
fd = stdin()
``````


== See also

#nlink(<stream_manager:stdout>)[stdout];, #nlink(<stream_manager:stderr>)[stderr];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<stream_manager:fopen>)[fopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
