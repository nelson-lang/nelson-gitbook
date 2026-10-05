#import "nelson_help.typ": *

= evalc <core:evalc>

Evaluate Nelson code with console capture.

== Syntax

- #raw("t = evalc(str)");
- #raw("t = evalc(str)");
- #raw("[t, r1, ... rn] = evalc(str)");

== Input argument

/ str: a string: Nelson instruction to execute

== Output argument

/ T: output text captured in t variable
/ \[r1, ... rn\]: results: output variables

== Description

#strong[evalc]; executes Nelson instructions given in a string.

 console display is redirected into a variable.

 diary, more, and input are disabled when #strong[evalc]; is used.


== Examples

``````matlab
evalc('B=4')
``````

``````matlab

        >t = evalc('dir')
``````


== See also

#nlink(<core:eval>)[eval];, #nlink(<core:evalin>)[evalin];, #nlink(<core:execstr>)[execstr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
