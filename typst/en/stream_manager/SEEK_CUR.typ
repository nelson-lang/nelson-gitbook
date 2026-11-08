#import "nelson_help.typ": *

= SEEK\_CUR <stream_manager:SEEK_CUR>

Origin value for fseek: the current position.

== Syntax

- #raw("id = SEEK_CUR()");

== Output argument

/ id: the value #strong[0];.

== Description

#strong[id \= SEEK\_CUR()]; returns the numeric origin value to pass to #strong[fseek]; to position the file relative to the current position.


== Example

``````matlab
id = SEEK_CUR()
``````


== See also

#nlink(<stream_manager:fseek>)[fseek];, #nlink(<stream_manager:ftell>)[ftell];, #nlink(<stream_manager:SEEK_SET>)[SEEK\_SET];, #nlink(<stream_manager:SEEK_END>)[SEEK\_END];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
