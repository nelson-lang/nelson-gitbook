#import "nelson_help.typ": *

= which <functions_manager:which>

Locates functions and built-in.

== Syntax

- #raw("which(function_name)");
- #raw("p = which(function_name)");
- #raw("c = which(function_name, '-all')");
- #raw("m = which(function_name, '-module')");

== Input argument

/ function\_name: a string: function name.

== Output argument

/ p: a string: path of the function or built-in
/ c: a cell of strings: paths of the function or built-in.
/ m: a cell of strings: name of the modules where function or built-in is available.

== Description

#strong[which]; returns the path of a function or a built-in.


== Example

``````matlab
which('cos')
p = which('cos')
c = which('cos', '-all')
m = which('cos', '-module')

``````


== See also

#nlink(<functions_manager:what>)[what];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
