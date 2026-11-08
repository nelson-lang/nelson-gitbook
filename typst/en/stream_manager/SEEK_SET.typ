#import "nelson_help.typ": *

= SEEK\_SET <stream_manager:SEEK_SET>

Origin value for fseek: the beginning of the file.

== Syntax

- #raw("id = SEEK_SET()");

== Output argument

/ id: the value #strong[-1];.

== Description

#strong[id \= SEEK\_SET()]; returns the numeric origin value to pass to #strong[fseek]; to position the file relative to the beginning of the file.


== Example

``````matlab
id = SEEK_SET()
``````


== See also

#nlink(<stream_manager:fseek>)[fseek];, #nlink(<stream_manager:ftell>)[ftell];, #nlink(<stream_manager:SEEK_CUR>)[SEEK\_CUR];, #nlink(<stream_manager:SEEK_END>)[SEEK\_END];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
