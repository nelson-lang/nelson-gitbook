#import "nelson_help.typ": *

= func2str <function_handle:func2str>

Return a function handle constructed from a string.

== Syntax

- #raw("func_handle = str2func(str)");

== Input argument

/ str: a string.

== Output argument

/ func\_handle: a function handle

== Description

#strong[func\_handle \= str2func(str)]; returns a function handle constructed from the string#strong[str];.


== Example

``````matlab
fh = str2func('cos')
class(fh)
``````


== See also

#nlink(<function_handle:func2str>)[func2str];, #nlink(<function_handle:isfunction_handle>)[isfunction\_handle];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
