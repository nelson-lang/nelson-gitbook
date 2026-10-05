#import "nelson_help.typ": *

= execstr <core:execstr>

Execute Nelson code in strings.

== Syntax

- #raw("execstr(str)");
- #raw("execstr(str, 'nocatch')");
- #raw("bSuccess = execstr(str, 'errcatch')");

== Input argument

/ str: a string: Nelson instruction to execute

== Output argument

/ bSuccess: a logical: true or false if command fails

== Description

#strong[execstr]; executes Nelson instructions given in a string.

 #strong[execstr(str, 'nocatch')]; is equivalent to #strong[execstr(str)];

 #strong[execstr]; can be used as alternative to #strong[try ... catch ... end]; block.


== Examples

``````matlab
execstr('b = ''hello''; disp(b);')
``````

This example will fail and returns an error message.

``````matlab
execstr('b = yyyy')
``````

This example will fail and returns an error message.

``````matlab
execstr('b = yyyy', 'nocatch')
``````

This example will not fail and return false.

``````matlab
r = execstr('b = yyyy', 'errcatch')
``````


== See also

#nlink(<core:run>)[run];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
