#import "nelson_help.typ": *

= getLastReport <error_manager:getLastReport>

Returns last recorded formatted error message.

== Syntax

- #raw("messageText = getLastReport()");

== Output argument

/ messageText: a character vector: formatted error message.

== Description

#strong[getLastReport]; returns last formatted error message.


== Examples

``````matlab
lasterror('reset')
getLastReport()
``````

``````matlab
state = execstr('xxxxxx', 'errcatch')
l = lasterror()
getLastReport

``````


== See also

#nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:error>)[error];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
