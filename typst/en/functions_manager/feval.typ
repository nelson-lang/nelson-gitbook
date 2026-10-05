#import "nelson_help.typ": *

= feval <functions_manager:feval>

Evaluates function.

== Syntax

- #raw("feval(function_name; x1, ..., xn)");
- #raw("feval(function_handle; x1, ..., xn)");
- #raw("[r1, ..., rn] = feval(function_name, x1, ..., xn)");
- #raw("[r1, ..., rn] = feval(function_handle, x1, ..., xn)");

== Input argument

/ function\_name: a string: function name.
/ function\_handle: a function handle.
/ x1, ..., xn: input arguments of the function.

== Output argument

/ r1, ..., rn: output arguments returned by the function

== Description

#strong[function]; calls the base function or built-in described by its name or function handle and input arguments.


== Example

``````matlab
a = feval('cos', 0)
b = feval(str2func('cos'), 0)
``````


== See also

#nlink(<functions_manager:builtin>)[builtin];, #nlink(<function_handle:func2str>)[func2str];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
