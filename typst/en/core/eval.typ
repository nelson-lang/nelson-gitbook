#import "nelson_help.typ": *

= eval <core:eval>

Evaluate Nelson code in string.

== Syntax

- #raw("eval(str)");
- #raw("eval(str, catch_str)");
- #raw("[r1, ... rn] = eval(str)");
- #raw("[r1, ... rn] = eval(str, catch_str)");

== Input argument

/ str: a string: Nelson instruction to execute
/ catch\_str: a string: Nelson instruction to execute if an error is detected.

== Output argument

/ \[r1, ... rn\]: results: output variables

== Description

#strong[eval]; executes Nelson instructions given in a string.

 Please use #strong[try catch end]; block instead than #strong[eval];, if you need to capture an error message for higher performance.


== Examples

``````matlab
eval('B=4')
``````

This example will fail and returns an error message.

``````matlab
C = eval('B=4')
``````

``````matlab
D = eval(4)
``````

This example will not fail and return false.

``````matlab
eval('error(''blabla'')', 'l = lasterror(); disp([''lasterror message: '', l.message])')
``````


== See also

#nlink(<core:execstr>)[execstr];, #nlink(<core:evalc>)[evalc];, #nlink(<core:evalin>)[evalin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
