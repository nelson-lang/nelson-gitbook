#import "nelson_help.typ": *

= clearfun <functions_manager:clearfun>

Clear an built-in function.

== Syntax

- #raw("l = clearfun(function_name)");
- #raw("l = clearfun(function_handle)");

== Input argument

/ function\_name: a string: function name.
/ function\_handle: a function handle.

== Output argument

/ l: a logical

== Description

#strong[clearfun]; clears built-in.


== Example

``````matlab
cos(3)
a = clearfun('cos')
cos(3)

sin(3)
b = clearfun(str2func('sin'))
sin(3)

``````


== See also

#nlink(<functions_manager:feval>)[feval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
