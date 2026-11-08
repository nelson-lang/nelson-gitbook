#import "nelson_help.typ": *

= stderr <stream_manager:stderr>

File identifier of the standard error stream.

== Syntax

- #raw("fd = stderr()");

== Output argument

/ fd: the value #strong[2];.

== Description

#strong[fd \= stderr()]; returns #strong[2];, the file identifier of the standard error stream.


== Example

``````matlab
fprintf(stderr(), 'Hello\n');
``````


== See also

#nlink(<stream_manager:stdin>)[stdin];, #nlink(<stream_manager:stdout>)[stdout];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<stream_manager:fopen>)[fopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
