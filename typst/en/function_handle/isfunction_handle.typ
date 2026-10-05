#import "nelson_help.typ": *

= isfunction\_handle <function_handle:isfunction_handle>

Checks if value is a function handle.

== Syntax

- #raw("l = isfunction_handle(func_handle)");

== Input argument

/ func\_handle: a function handle or other variable type.

== Output argument

/ l: a logical

== Description

#strong[l \= isfunction\_handle(func\_handle)]; checks if #strong[func\_handle]; is a function handle. Returning #strong[true]; if it is.


== Example

``````matlab
fh = str2func('cos')
isfunction_handle(fh)
fh = 3
isfunction_handle(fh)
``````


== See also

#nlink(<function_handle:str2func>)[str2func];, #nlink(<function_handle:func2str>)[func2str];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
