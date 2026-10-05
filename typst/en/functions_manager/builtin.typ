#import "nelson_help.typ": *

= builtin <functions_manager:builtin>

Executes built-in function.

== Syntax

- #raw("builtin(function_name; x1, ..., xn)");
- #raw("builtin(function_handle; x1, ..., xn)");
- #raw("[r1, ..., rn] = builtin(function_name, x1, ..., xn)");
- #raw("[r1, ..., rn] = builtin(function_handle, x1, ..., xn)");

== Input argument

/ function\_name: a string: function name.
/ function\_handle: a function handle.
/ x1, ..., xn: input arguments of the builtin.

== Output argument

/ r1, ..., rn: output arguments returned by the builtin

== Description

#strong[builtin]; calls the base built-in described by its name or function handle and input arguments.


== Example

``````matlab
a = builtin('cos', 0)
b = builtin(str2func('cos'), 0)
``````


== See also

#nlink(<functions_manager:feval>)[feval];, #nlink(<function_handle:func2str>)[func2str];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
