#import "nelson_help.typ": *

= lasterror <error_manager:lasterror>

Returns last recorded error message.

== Syntax

- #raw("last_err = lasterror()");
- #raw("lasterror('reset')");
- #raw("lasterror(error_struct)");

== Output argument

/ last\_err: error message structure.

== Description

#strong[l \= lasterror()]; returns a structure containing the last error message and information as an struct.

 #strong[lasterror('reset')]; clears last error.

 #strong[lasterror(error\_struct)]; set last error.


== Examples

``````matlab
state = execstr('xxxxxx', 'errcatch')
if ~state
  l = lasterror()
end
``````

``````matlab
state = execstr('xxxxxx', 'errcatch')
l = lasterror();
lasterror('reset');
lasterror()
lasterror(l);
lasterror()
``````


== See also

#nlink(<error_manager:error>)[error];, #nlink(<error_manager:warning>)[warning];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
