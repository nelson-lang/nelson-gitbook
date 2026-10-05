#import "nelson_help.typ": *

= global <memory_manager:global>

Defines a global variable.

== Syntax

- #raw("global variable_name");
- #raw("global(variable_name)");
- #raw("global variable_name1 ... variable_nameN");

== Input argument

/ variable\_name: a string: valid variable name.

== Description

#strong[global]; make variable in global assign value to a variable in a specified variables scope.


== Example

``````matlab
function myfun()
global y;
y = 1;
end

myfun()
who
global y
who
disp(y)
who
clear global y
disp(y)
``````


== See also

#nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
