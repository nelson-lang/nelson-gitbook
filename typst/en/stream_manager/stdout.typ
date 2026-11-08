#import "nelson_help.typ": *

= stdout <stream_manager:stdout>

File identifier of the standard output stream.

== Syntax

- #raw("fd = stdout()");

== Output argument

/ fd: the value #strong[1];.

== Description

#strong[fd \= stdout()]; returns #strong[1];, the file identifier of the standard output stream.


== Example

``````matlab
fprintf(stdout(), 'Hello\n');
``````


== See also

#nlink(<stream_manager:stdin>)[stdin];, #nlink(<stream_manager:stderr>)[stderr];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<stream_manager:fopen>)[fopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
