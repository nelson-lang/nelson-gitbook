#import "nelson_help.typ": *

= str2func <function_handle:str2func>

Returns a function handle from a string.

== Syntax

- #raw("func_handle = str2func(str)");

== Input argument

/ str: a string

== Output argument

/ func\_handle: a function handle.

== Description

#strong[function\_handle \= str2func(str)]; returns a function handle #strong[function\_handle]; for the function named in the string #strong[str];

 #strong[str]; function name or representation of anonymous function.


== Examples

``````matlab
fh = str2func('cos')
str = func2str(fh)
``````

``````matlab
myFind = str2func('@(x, y) find(x > y)')
M = rand(4, 3, 5);
[R, C] = myFind(M, 0.9)
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
