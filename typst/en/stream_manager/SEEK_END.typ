#import "nelson_help.typ": *

= SEEK\_END <stream_manager:SEEK_END>

Origin value for fseek: the end of the file.

== Syntax

- #raw("id = SEEK_END()");

== Output argument

/ id: the value #strong[1];.

== Description

#strong[id \= SEEK\_END()]; returns the numeric origin value to pass to #strong[fseek]; to position the file relative to the end of the file.


== Example

``````matlab
id = SEEK_END()
``````


== See also

#nlink(<stream_manager:fseek>)[fseek];, #nlink(<stream_manager:ftell>)[ftell];, #nlink(<stream_manager:SEEK_SET>)[SEEK\_SET];, #nlink(<stream_manager:SEEK_CUR>)[SEEK\_CUR];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
