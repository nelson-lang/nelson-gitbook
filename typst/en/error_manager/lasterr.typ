#import "nelson_help.typ": *

= lasterr <error_manager:lasterr>

Returns or sets last recorded error message.

== Syntax

- #raw("msg = lasterr()");
- #raw("[msg, id] = lasterr()");
- #raw("previous = lasterr(msg)");
- #raw("previous = lasterr(msg, id)");

== Input argument

/ msg: error message: character vector or string scalar.
/ id: error identifier: character vector or string scalar.

== Output argument

/ msg: last error message: character vector.
/ id: last error identifier: character vector.

== Description

#strong[msg \= lasterr()]; returns the message of the last recorded error.

 #strong[\[msg, id\] \= lasterr()]; also returns the error identifier.

 #strong[lasterr(msg)]; and #strong[lasterr(msg, id)]; set the last error message (and identifier), returning the previous message.


== Example

``````matlab
try
  error('MyPkg:boom', 'exploded');
catch
end
[msg, id] = lasterr()
``````


== See also

#nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:error>)[error];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
